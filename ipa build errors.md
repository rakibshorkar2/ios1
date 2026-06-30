Run flutter build ios --release --no-codesign
Warning: Building for device with codesigning disabled. You will have to manually codesign before deploying to device.
Building com.example.dirBrowser for device (ios-release)...
Adding Swift Package Manager integration...                        39.2s
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
Running pod install...                                              6.7s
Running Xcode build...                                          
Xcode build done.                                           184.9s
Failed to build iOS app
Swift Compiler Error (Xcode): Call to method 'fallbackToDefaultSavePath' in closure requires explicit use of 'self' to make capture semantics explicit
/Users/runner/work/ios1/ios1/ios/Runner/AppDelegate.swift:62:20
Swift Compiler Error (Xcode): Reference to property 'pendingFolderPickerResult' in closure requires explicit use of 'self' to make capture semantics explicit
/Users/runner/work/ios1/ios1/ios/Runner/AppDelegate.swift:107:16
Encountered error while building for device.
Error: Process completed with exit code 1.