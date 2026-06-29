import Flutter
import UIKit
import Foundation

class DownloadManager: NSObject {
    static let shared = DownloadManager()

    private var backgroundSession: URLSession!
    private var activeTasks: [String: URLSessionDownloadTask] = [:]
    private var taskIdMap: [Int: String] = [:]
    private var progressMap: [String: (received: Int64, total: Int64)] = [:]
    private var resumeDataMap: [String: Data] = [:]

    var eventSink: FlutterEventSink?

    private override init() {
        super.init()
        let config = URLSessionConfiguration.background(withIdentifier: "com.dirxplore.background.download")
        config.isDiscretionary = false
        config.sessionSendsLaunchEvents = true
        config.shouldUseExtendedBackgroundIdleMode = true
        config.allowsCellularAccess = true
        if #available(iOS 13.0, *) {
            config.allowsExpensiveNetworkAccess = true
            config.allowsConstrainedNetworkAccess = true
        }
        backgroundSession = URLSession(configuration: config, delegate: self, delegateQueue: nil)
    }

    func startDownload(url: String, fileName: String, downloadId: String) {
        guard let downloadUrl = URL(string: url) else {
            sendEvent(type: "error", downloadId: downloadId, data: ["message": "Invalid URL"])
            return
        }

        if let resumeData = resumeDataMap[downloadId] {
            let task = backgroundSession.downloadTask(withResumeData: resumeData)
            task.taskDescription = "\(downloadId)|\(fileName)"
            activeTasks[downloadId] = task
            taskIdMap[task.taskIdentifier] = downloadId
            resumeDataMap.removeValue(forKey: downloadId)
            task.resume()
            sendEvent(type: "resumed", downloadId: downloadId, data: ["fileName": fileName])
        } else {
            var request = URLRequest(url: downloadUrl)
            request.setValue("Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1", forHTTPHeaderField: "User-Agent")

            let task = backgroundSession.downloadTask(with: request)
            task.taskDescription = "\(downloadId)|\(fileName)"
            activeTasks[downloadId] = task
            taskIdMap[task.taskIdentifier] = downloadId
            progressMap[downloadId] = (0, 0)
            task.resume()
            sendEvent(type: "started", downloadId: downloadId, data: ["fileName": fileName, "url": url])
        }
    }

    func pauseDownload(downloadId: String) {
        guard let task = activeTasks[downloadId] else {
            sendEvent(type: "error", downloadId: downloadId, data: ["message": "No active task to pause"])
            return
        }
        task.cancel { [weak self] possibleResumeData in
            guard let self = self else { return }
            if let resumeData = possibleResumeData {
                self.resumeDataMap[downloadId] = resumeData
            }
            self.activeTasks.removeValue(forKey: downloadId)
            self.taskIdMap.removeValue(forKey: task.taskIdentifier)
            self.sendEvent(type: "paused", downloadId: downloadId, data: [:])
        }
    }

    func cancelDownload(downloadId: String) {
        guard let task = activeTasks[downloadId] else {
            sendEvent(type: "cancelled", downloadId: downloadId, data: [:])
            return
        }
        task.cancel()
        activeTasks.removeValue(forKey: downloadId)
        taskIdMap.removeValue(forKey: task.taskIdentifier)
        resumeDataMap.removeValue(forKey: downloadId)
        progressMap.removeValue(forKey: downloadId)
        sendEvent(type: "cancelled", downloadId: downloadId, data: [:])
    }

    func cancelAll() {
        for (id, task) in activeTasks {
            task.cancel()
            taskIdMap.removeValue(forKey: task.taskIdentifier)
            resumeDataMap.removeValue(forKey: id)
            progressMap.removeValue(forKey: id)
        }
        activeTasks.removeAll()
    }

    func restorePendingTasks() {
        backgroundSession.getAllTasks { [weak self] tasks in
            guard let self = self else { return }
            for task in tasks {
                if let downloadTask = task as? URLSessionDownloadTask,
                   let desc = downloadTask.taskDescription {
                    let parts = desc.split(separator: "|", maxSplits: 1)
                    if parts.count == 2 {
                        let downloadId = String(parts[0])
                        let fileName = String(parts[1])
                        self.activeTasks[downloadId] = downloadTask
                        self.taskIdMap[downloadTask.taskIdentifier] = downloadId
                        self.sendEvent(type: "restored", downloadId: downloadId, data: ["fileName": fileName])
                    }
                }
            }
        }
    }

    private func sendEvent(type: String, downloadId: String, data: [String: Any]) {
        guard let sink = eventSink else { return }
        var event: [String: Any] = ["type": type, "downloadId": downloadId]
        event.merge(data) { (_, new) in new }
        sink(event)
    }

    private func sendProgress(downloadId: String, received: Int64, total: Int64) {
        sendEvent(type: "progress", downloadId: downloadId, data: [
            "received": received,
            "total": total,
            "progress": total > 0 ? Double(received) / Double(total) : 0.0
        ])
    }
}

extension DownloadManager: URLSessionDownloadDelegate {
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        guard let downloadId = taskIdMap[downloadTask.taskIdentifier] else { return }
        progressMap[downloadId] = (totalBytesWritten, totalBytesExpectedToWrite)
        sendProgress(downloadId: downloadId, received: totalBytesWritten, total: totalBytesExpectedToWrite)
    }

    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        guard let downloadId = taskIdMap[downloadTask.taskIdentifier],
              let desc = downloadTask.taskDescription else { return }
        let parts = desc.split(separator: "|", maxSplits: 1)
        guard parts.count == 2 else { return }
        let fileName = String(parts[1])

        let documentsDir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let destinationDir = documentsDir.appendingPathComponent("DirXplore", isDirectory: true)
        try? FileManager.default.createDirectory(at: destinationDir, withIntermediateDirectories: true)
        let destinationUrl = destinationDir.appendingPathComponent(fileName)

        try? FileManager.default.removeItem(at: destinationUrl)
        do {
            try FileManager.default.moveItem(at: location, to: destinationUrl)
            sendEvent(type: "completed", downloadId: downloadId, data: [
                "fileName": fileName,
                "savePath": destinationUrl.path
            ])
        } catch {
            sendEvent(type: "error", downloadId: downloadId, data: ["message": "Failed to move file: \(error.localizedDescription)"])
        }

        activeTasks.removeValue(forKey: downloadId)
        taskIdMap.removeValue(forKey: downloadTask.taskIdentifier)
        progressMap.removeValue(forKey: downloadId)
    }

    func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) {
        guard let downloadId = taskIdMap[task.taskIdentifier] else { return }
        if let error = error as NSError? {
            if error.code == NSURLErrorCancelled {
                if resumeDataMap[downloadId] == nil {
                    sendEvent(type: "cancelled", downloadId: downloadId, data: [:])
                }
            } else if error.domain == NSURLErrorDomain && error.userInfo[NSURLSessionDownloadTaskResumeData] != nil {
                let resumeData = error.userInfo[NSURLSessionDownloadTaskResumeData] as? Data
                if let data = resumeData {
                    resumeDataMap[downloadId] = data
                    sendEvent(type: "paused", downloadId: downloadId, data: ["resumable": true])
                } else {
                    sendEvent(type: "error", downloadId: downloadId, data: ["message": error.localizedDescription])
                }
            } else {
                sendEvent(type: "error", downloadId: downloadId, data: ["message": error.localizedDescription])
            }
        }
    }

    func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) {
        DispatchQueue.main.async {
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.backgroundCompletionHandler?()
                appDelegate.backgroundCompletionHandler = nil
            }
        }
    }
}

extension DownloadManager: FlutterStreamHandler {
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = events
        restorePendingTasks()
        return nil
    }

    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        self.eventSink = nil
        return nil
    }
}
