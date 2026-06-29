Run flutter build ios --release --no-codesign
Warning: Building for device with codesigning disabled. You will have to manually codesign before deploying to device.
Building com.example.dirBrowser for device (ios-release)...
Adding Swift Package Manager integration...                        34.9s
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
Running pod install...                                              5.5s
Running Xcode build...                                          
Xcode build done.                                           143.4s
Failed to build iOS app
Swift Compiler Error (Xcode): Declaration is only valid at file scope
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:225:0
Swift Compiler Error (Xcode): Declaration is only valid at file scope
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:298:0
Swift Compiler Error (Xcode): Expected '}' in class
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:310:0
Swift Compiler Error (Xcode): Argument type 'DownloadManager' does not conform to expected type 'FlutterStreamHandler'
/Users/runner/work/ios1/ios1/ios/Runner/AppDelegate.swift:73:54
Swift Compiler Error (Xcode): 'endAllLiveActivities' is inaccessible due to 'private' protection level
/Users/runner/work/ios1/ios1/ios/Runner/AppDelegate.swift:96:39
Swift Compiler Error (Xcode): Argument type 'DownloadManager' does not conform to expected type 'URLSessionDelegate'
/Users/runner/work/ios1/ios1/ios/Runner/DownloadManager.swift:29:72
Encountered error while building for device.
Error: Process completed with exit code 1.