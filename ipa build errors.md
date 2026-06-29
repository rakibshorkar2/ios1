Run flutter build ios --release --no-codesign
Warning: Building for device with codesigning disabled. You will have to manually codesign before deploying to device.
Building com.example.dirBrowser for device (ios-release)...
Adding Swift Package Manager integration...                        32.4s
The following plugins do not support Swift Package Manager for ios:
  - flutter_background_service_ios
  - flutter_inappwebview_ios
  - flutter_local_notifications
  - media_kit_libs_ios_video
  - media_kit_video
  - permission_handler_apple
  - screen_brightness_ios
  - volume_controller
  - workmanager_apple
This will become an error in a future version of Flutter. Please contact the plugin maintainers to request Swift Package Manager adoption.
Running pod install...                                             19.4s
Running Xcode build...                                          
Xcode build done.                                           217.8s
Failed to build iOS app
Swift Compiler Error (Xcode): Value of type 'DownloadManager' has no member 'endAllLiveActivities'
/Users/runner/work/ios1/ios1/ios/Runner/AppDelegate.swift:96:39
Swift Compiler Error (Xcode): Cannot find 'liveActivityEnabled' in scope
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:141:39
Swift Compiler Error (Xcode): 'ActivityContent' is only available in iOS 16.2 or newer
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:150:22
Swift Compiler Error (Xcode): 'request(attributes:content:pushType:)' is only available in iOS 16.2 or newer
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:152:40
Swift Compiler Error (Xcode): Cannot find 'liveActivities' in scope
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:157:12
Swift Compiler Error (Xcode): Cannot find 'liveActivities' in scope
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:165:29
Swift Compiler Error (Xcode): Cannot find 'liveActivities' in scope
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:180:29
Swift Compiler Error (Xcode): Cannot infer contextual base in reference to member 'after'
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:191:72
Swift Compiler Error (Xcode): Cannot infer contextual base in reference to member 'after'
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:195:53
Swift Compiler Error (Xcode): Cannot find 'liveActivities' in scope
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:202:29
Swift Compiler Error (Xcode): Cannot find 'liveActivityEnabled' in scope
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:217:39
Swift Compiler Error (Xcode): Cannot find 'liveActivities' in scope
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:218:29
Swift Compiler Error (Xcode): Cannot find 'liveActivities' in scope
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:223:8
Encountered error while building for device.
Error: Process completed with exit code 1.