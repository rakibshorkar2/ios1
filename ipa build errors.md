Run flutter build ios --release --no-codesign
  
Warning: Building for device with codesigning disabled. You will have to manually codesign before deploying to device.
Building com.example.dirBrowser for device (ios-release)...
Adding Swift Package Manager integration...                        26.6s
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
Running Xcode build...                                          
Xcode build done.                                           135.7s
Failed to build iOS app
Swift Compiler Error (Xcode): 'persistentFolderURL' is inaccessible due to 'private' protection level
/Users/runner/work/ios1/ios1/ios/Runner/AppDelegate.swift:59:62
Encountered error while building for device.
Error: Process completed with exit code 1.