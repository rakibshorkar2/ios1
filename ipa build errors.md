Run flutter build ios --release --no-codesign
Warning: Building for device with codesigning disabled. You will have to manually codesign before deploying to device.
Building com.example.dirBrowser for device (ios-release)...
Adding Swift Package Manager integration...                        34.5s
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
Running pod install...                                             21.8s
Running Xcode build...                                          
Xcode build done.                                           98.7s
Failed to build iOS app
Swift Compiler Error (Xcode): Extra trailing closures at positions #3, #4 in call
/Users/runner/work/ios1/ios1/ios/WidgetExtension/DownloadLiveActivity.swift:23:35
Swift Compiler Error (Xcode): Cannot convert return expression of type 'DynamicIslandExpandedRegion<some View>' to return type 'DynamicIslandExpandedContent<_>'
/Users/runner/work/ios1/ios1/ios/WidgetExtension/DownloadLiveActivity.swift:23:8
Swift Compiler Error (Xcode): Underlying type for opaque result type 'DynamicIslandExpandedContent<some View>' could not be inferred from return expression
/Users/runner/work/ios1/ios1/ios/WidgetExtension/DownloadLiveActivity.swift:23:8
Encountered error while building for device.
Error: Process completed with exit code 1.