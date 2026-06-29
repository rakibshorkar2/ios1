import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
    var backgroundCompletionHandler: (() -> Void)?

    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GeneratedPluginRegistrant.register(with: self)

        guard let controller = window?.rootViewController as? FlutterViewController else {
            return super.application(application, didFinishLaunchingWithOptions: launchOptions)
        }

        let downloadChannel = FlutterMethodChannel(
            name: "com.dirxplore/ios_download",
            binaryMessenger: controller.binaryMessenger
        )

        downloadChannel.setMethodCallHandler { [weak self] (call, result) in
            guard self != nil else { return }
            switch call.method {
            case "startDownload":
                if let args = call.arguments as? [String: Any],
                   let url = args["url"] as? String,
                   let fileName = args["fileName"] as? String,
                   let downloadId = args["downloadId"] as? String {
                    DownloadManager.shared.startDownload(url: url, fileName: fileName, downloadId: downloadId)
                    result(true)
                } else {
                    result(FlutterError(code: "INVALID_ARGS", message: "Missing parameters", details: nil))
                }

            case "pauseDownload":
                if let args = call.arguments as? [String: Any],
                   let downloadId = args["downloadId"] as? String {
                    DownloadManager.shared.pauseDownload(downloadId: downloadId)
                    result(true)
                } else {
                    result(FlutterError(code: "INVALID_ARGS", message: "Missing downloadId", details: nil))
                }

            case "cancelDownload":
                if let args = call.arguments as? [String: Any],
                   let downloadId = args["downloadId"] as? String {
                    DownloadManager.shared.cancelDownload(downloadId: downloadId)
                    result(true)
                } else {
                    result(FlutterError(code: "INVALID_ARGS", message: "Missing downloadId", details: nil))
                }

            case "cancelAll":
                DownloadManager.shared.cancelAll()
                result(true)

            case "getSavePath":
                let documentsDir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
                let dirXploreDir = documentsDir.appendingPathComponent("DirXplore", isDirectory: true)
                try? FileManager.default.createDirectory(at: dirXploreDir, withIntermediateDirectories: true)
                result(dirXploreDir.path)

            default:
                result(FlutterMethodNotImplemented)
            }
        }

        let eventChannel = FlutterEventChannel(
            name: "com.dirxplore/ios_download_events",
            binaryMessenger: controller.binaryMessenger
        )
        eventChannel.setStreamHandler(DownloadManager.shared)

        let liveActivityChannel = FlutterMethodChannel(
            name: "com.dirxplore/live_activity",
            binaryMessenger: controller.binaryMessenger
        )

        liveActivityChannel.setMethodCallHandler { [weak self] (call, result) in
            guard self != nil else { return }
            switch call.method {
            case "isSupported":
                if #available(iOS 16.1, *) {
                    result(true)
                } else {
                    result(false)
                }

            case "enable":
                DownloadManager.shared.liveActivityEnabled = true
                result(true)

            case "disable":
                DownloadManager.shared.liveActivityEnabled = false
                DownloadManager.shared.endAllLiveActivities()
                result(true)

            case "isEnabled":
                result(DownloadManager.shared.liveActivityEnabled)

            default:
                result(FlutterMethodNotImplemented)
            }
        }

        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

    override func application(
        _ application: UIApplication,
        handleEventsForBackgroundURLSession identifier: String,
        completionHandler: @escaping () -> Void
    ) {
        backgroundCompletionHandler = completionHandler
        _ = DownloadManager.shared
    }
}
