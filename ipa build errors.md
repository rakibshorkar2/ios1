Run flutter build ios --release --no-codesign
Warning: Building for device with codesigning disabled. You will have to manually codesign before deploying to device.
Building com.example.dirBrowser for device (ios-release)...
Adding Swift Package Manager integration...                        46.2s
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
Running pod install...                                              7.7s
Running Xcode build...                                          
Xcode build done.                                           155.9s
Failed to build iOS app
Error output from Xcode build:
↳
    ** BUILD FAILED **
Encountered error while building for device.


Xcode's output:
↳
    Writing result bundle at path:
    	/var/folders/mn/js5hmsy13552y330w_94s79h0000gn/T/flutter_tools.0b6Y5H/flutter_ios_build_temp_dirbTaZbV/temporary_xcresult_bundle

    /Users/runner/.pub-cache/hosted/pub.dev/volume_controller-2.0.8/ios/Classes/VolumeObserver.swift:21:17: warning: 'let' pattern has no effect; sub-pattern didn't bind any variables
            } catch let _ {
                    ^~~~~

    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:5:41: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
      static public func createContext() -> EAGLContext {
                                            ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:11:16: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        _ context: EAGLContext
                   ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:82:14: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        context: EAGLContext,
                 ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:122:47: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
      static public func deleteContext(_ context: EAGLContext) {
                                                  ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:134:16: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        _ context: EAGLContext,
                   ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:146:16: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        _ context: EAGLContext,
                   ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:160:16: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        _ context: EAGLContext,
                   ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:6:19: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        let context = EAGLContext(api: .openGLES3)
                      ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:86:5: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        EAGLContext.setCurrent(context)
        ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:89:7: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
          EAGLContext.setCurrent(nil)
          ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:93:5: warning: 'glBindTexture' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        glBindTexture(GLenum(GL_TEXTURE_2D), textureName)
        ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:95:7: warning: 'glBindTexture' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
          glBindTexture(GLenum(GL_TEXTURE_2D), 0)
          ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:99:5: warning: 'glGenFramebuffers' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        glGenFramebuffers(1, &frameBuffer)
        ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:100:5: warning: 'glBindFramebuffer' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        glBindFramebuffer(GLenum(GL_FRAMEBUFFER), frameBuffer)
        ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:102:7: warning: 'glBindFramebuffer' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
          glBindFramebuffer(GLenum(GL_FRAMEBUFFER), 0)
          ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:105:5: warning: 'glFramebufferTexture2D' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        glFramebufferTexture2D(
        ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:113:18: warning: 'glCheckFramebufferStatus' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        let status = glCheckFramebufferStatus(GLenum(GL_FRAMEBUFFER))
                     ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:115:7: warning: 'glDeleteFramebuffers' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
          glDeleteFramebuffers(1, &frameBuffer)
          ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:149:5: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        EAGLContext.setCurrent(context)
        ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:152:7: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
          EAGLContext.setCurrent(nil)
          ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:156:5: warning: 'glDeleteTextures' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        glDeleteTextures(1, &textureName)
        ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:163:5: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        EAGLContext.setCurrent(context)
        ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:166:7: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
          EAGLContext.setCurrent(nil)
          ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:170:5: warning: 'glDeleteFramebuffers' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        glDeleteFramebuffers(1, &frameBuffer)
        ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/OpenGLESHelpers.swift:174:17: warning: 'glGetError()' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        let error = glGetError()
                    ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/TextureGLESContext.swift:2:24: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
      private let context: EAGLContext
                           ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/TextureGLESContext.swift:8:14: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        context: EAGLContext,
                 ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/gles/TextureGLESContext.swift:20:9: warning: immutable value 'index' was never used; consider replacing with '_' or removing it
        for index in 0...3 {
            ^~~~~
            _
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/TextureHW.swift:9:24: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
      private let context: EAGLContext
                           ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/TextureHW.swift:53:5: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        EAGLContext.setCurrent(context)
        ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/TextureHW.swift:56:7: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
          EAGLContext.setCurrent(nil)
          ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/TextureHW.swift:101:5: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        EAGLContext.setCurrent(context)
        ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/TextureHW.swift:104:7: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
          EAGLContext.setCurrent(nil)
          ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/TextureHW.swift:155:5: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        EAGLContext.setCurrent(context)
        ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/TextureHW.swift:158:7: warning: 'EAGLContext' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
          EAGLContext.setCurrent(nil)
          ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/TextureHW.swift:161:5: warning: 'glBindFramebuffer' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        glBindFramebuffer(GLenum(GL_FRAMEBUFFER), textureContext!.frameBuffer)
        ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/TextureHW.swift:163:7: warning: 'glBindFramebuffer' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
          glBindFramebuffer(GLenum(GL_FRAMEBUFFER), 0)
          ^
    /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Classes/plugin/TextureHW.swift:181:5: warning: 'glFlush()' was deprecated in iOS 12.0: OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)
        glFlush()
        ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_background_service_ios-5.0.3/ios/Classes/SwiftFlutterBackgroundServicePlugin.swift:175:7: warning: class 'FlutterBackgroundRefreshAppOperation' must restate inherited '@unchecked Sendable' conformance
    class FlutterBackgroundRefreshAppOperation: Operation {
          ^
                                                         , @unchecked Sendable
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_background_service_ios-5.0.3/ios/Classes/SwiftFlutterBackgroundServicePlugin.swift:37:30: warning: 'setMinimumBackgroundFetchInterval' was deprecated in iOS 13.0: Use a BGAppRefreshTask in the BackgroundTasks framework instead
            UIApplication.shared.setMinimumBackgroundFetchInterval(UIApplication.backgroundFetchIntervalMinimum)
                                 ^
    /Users/runner/.pub-cache/hosted/pub.dev/workmanager_apple-0.9.1+2/ios/Sources/workmanager_apple/BackgroundWorker.swift:86:13: warning: initialization of immutable value 'taskSessionIdentifier' was never used; consider replacing with assignment to '_' or removing it
            let taskSessionIdentifier = UUID()
            ~~~~^~~~~~~~~~~~~~~~~~~~~
            _
    /Users/runner/.pub-cache/hosted/pub.dev/workmanager_apple-0.9.1+2/ios/Sources/workmanager_apple/Extensions.swift:10:1: warning: extension declares a conformance of imported type 'UIBackgroundFetchResult' to imported protocol 'CustomDebugStringConvertible'; this will not behave correctly if the owners of 'UIKit' introduce this conformance in the future
    extension UIBackgroundFetchResult: CustomDebugStringConvertible {
    ^
    /Users/runner/.pub-cache/hosted/pub.dev/workmanager_apple-0.9.1+2/ios/Sources/workmanager_apple/Extensions.swift:10:1: note: add '@retroactive' to silence this warning
    extension UIBackgroundFetchResult: CustomDebugStringConvertible {
    ^                                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                       @retroactive CustomDebugStringConvertible
    /Users/runner/.pub-cache/hosted/pub.dev/workmanager_apple-0.9.1+2/ios/Sources/workmanager_apple/WorkmanagerPlugin.swift:165:28: warning: 'taskIdentifier' mutated after capture by sendable closure
                taskIdentifier = UIApplication.shared.beginBackgroundTask(withName: request.uniqueName, expirationHandler: {
                               ^
    /Users/runner/.pub-cache/hosted/pub.dev/workmanager_apple-0.9.1+2/ios/Sources/workmanager_apple/WorkmanagerPlugin.swift:162:17: note: variable defined here
                var taskIdentifier: UIBackgroundTaskIdentifier = .invalid
                    ^
    /Users/runner/.pub-cache/hosted/pub.dev/workmanager_apple-0.9.1+2/ios/Sources/workmanager_apple/WorkmanagerPlugin.swift:165:120: note: variable captured by sendable closure
                taskIdentifier = UIApplication.shared.beginBackgroundTask(withName: request.uniqueName, expirationHandler: {
                                                                                          ^
    /Users/runner/.pub-cache/hosted/pub.dev/workmanager_apple-0.9.1+2/ios/Sources/workmanager_apple/WorkmanagerPlugin.swift:166:56: note: capturing use
                    UIApplication.shared.endBackgroundTask(taskIdentifier)
                                                           ^
    /Users/runner/.pub-cache/hosted/pub.dev/workmanager_apple-0.9.1+2/ios/Sources/workmanager_apple/WorkmanagerPlugin.swift:162:17: note: variable defined here
                var taskIdentifier: UIBackgroundTaskIdentifier = .invalid
                    ^
    /Users/runner/.pub-cache/hosted/pub.dev/workmanager_apple-0.9.1+2/ios/Sources/workmanager_apple/WorkmanagerPlugin.swift:165:120: note: variable captured by sendable closure
                taskIdentifier = UIApplication.shared.beginBackgroundTask(withName: request.uniqueName, expirationHandler: {
                                                                                          ^
    /Users/runner/.pub-cache/hosted/pub.dev/workmanager_apple-0.9.1+2/ios/Sources/workmanager_apple/WorkmanagerPlugin.swift:166:56: note: capturing use
                    UIApplication.shared.endBackgroundTask(taskIdentifier)
                                                           ^
    /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/PhonePermissionStrategy.m:54:38: warning: 'CTCarrier' is deprecated: first deprecated in iOS 16.0 - Deprecated with no replacement [-Wdeprecated-declarations]
       54 | -(bool)canPlacePhoneCallWithCarrier:(CTCarrier *)carrier {
          |                                      ^
    In module 'CoreTelephony' imported from /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/PhonePermissionStrategy.m:8:
    /Applications/Xcode_16.4.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/CoreTelephony.framework/Headers/CTCarrier.h:17:12: note: 'CTCarrier' has been explicitly marked deprecated here
       17 | @interface CTCarrier : NSObject
          |            ^
    /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/PhonePermissionStrategy.m:39:30: warning: 'CTCarrier' is deprecated: first deprecated in iOS 16.0 - Deprecated with no replacement [-Wdeprecated-declarations]
       39 |     NSDictionary<NSString *, CTCarrier *> *providers = [netInfo serviceSubscriberCellularProviders];
          |                              ^
    In module 'CoreTelephony' imported from /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/PhonePermissionStrategy.m:8:
    /Applications/Xcode_16.4.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/CoreTelephony.framework/Headers/CTCarrier.h:17:12: note: 'CTCarrier' has been explicitly marked deprecated here
       17 | @interface CTCarrier : NSObject
          |            ^
    /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/PhonePermissionStrategy.m:39:65: warning: 'serviceSubscriberCellularProviders' is deprecated: first deprecated in iOS 16.0 - Deprecated with no replacement [-Wdeprecated-declarations]
       39 |     NSDictionary<NSString *, CTCarrier *> *providers = [netInfo serviceSubscriberCellularProviders];
          |                                                                 ^
    In module 'CoreTelephony' imported from /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/PhonePermissionStrategy.m:8:
    /Applications/Xcode_16.4.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/CoreTelephony.framework/Headers/CTTelephonyNetworkInfo.h:105:78: note: property 'serviceSubscriberCellularProviders' is declared deprecated here
      105 | @property(readonly, retain, nullable) NSDictionary<NSString *, CTCarrier *> *serviceSubscriberCellularProviders API_DEPRECATED("Deprecated with no replacement", ios(12.0, 16.0), watchos(5.0, 9.0)) API_UNAVAILABLE(macos, tvos);
          |                                                                              ^
    /Applications/Xcode_16.4.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/CoreTelephony.framework/Headers/CTTelephonyNetworkInfo.h:105:78: note: 'serviceSubscriberCellularProviders' has been explicitly marked deprecated here
    /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/PhonePermissionStrategy.m:41:7: warning: 'CTCarrier' is deprecated: first deprecated in iOS 16.0 - Deprecated with no replacement [-Wdeprecated-declarations]
       41 |       CTCarrier *carrier = [providers objectForKey:key];
          |       ^
    In module 'CoreTelephony' imported from /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/PhonePermissionStrategy.m:8:
    /Applications/Xcode_16.4.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/CoreTelephony.framework/Headers/CTCarrier.h:17:12: note: 'CTCarrier' has been explicitly marked deprecated here
       17 | @interface CTCarrier : NSObject
          |            ^
    /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/PhonePermissionStrategy.m:49:5: warning: 'CTCarrier' is deprecated: first deprecated in iOS 16.0 - Deprecated with no replacement [-Wdeprecated-declarations]
       49 |     CTCarrier *carrier = [netInfo subscriberCellularProvider];
          |     ^
    In module 'CoreTelephony' imported from /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/PhonePermissionStrategy.m:8:
    /Applications/Xcode_16.4.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/CoreTelephony.framework/Headers/CTCarrier.h:17:12: note: 'CTCarrier' has been explicitly marked deprecated here
       17 | @interface CTCarrier : NSObject
          |            ^
    /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/PhonePermissionStrategy.m:49:35: warning: 'subscriberCellularProvider' is deprecated: first deprecated in iOS 12.0 [-Wdeprecated-declarations]
       49 |     CTCarrier *carrier = [netInfo subscriberCellularProvider];
          |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~
          |                                   serviceSubscriberCellularProviders
    In module 'CoreTelephony' imported from /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/PhonePermissionStrategy.m:8:
    /Applications/Xcode_16.4.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/CoreTelephony.framework/Headers/CTTelephonyNetworkInfo.h:114:50: note: property 'subscriberCellularProvider' is declared deprecated here
      114 | @property(readonly, retain, nullable) CTCarrier *subscriberCellularProvider API_DEPRECATED_WITH_REPLACEMENT("serviceSubscriberCellularProviders", ios(4.0, 12.0)) API_UNAVAILABLE(macos);
          |                                                  ^
    /Applications/Xcode_16.4.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/CoreTelephony.framework/Headers/CTTelephonyNetworkInfo.h:114:50: note: 'subscriberCellularProvider' has been explicitly marked deprecated here
    /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/PhonePermissionStrategy.m:56:28: warning: 'mobileNetworkCode' is deprecated: first deprecated in iOS 16.0 - Deprecated; returns '65535' at some point in the future [-Wdeprecated-declarations]
       56 |   NSString *mnc = [carrier mobileNetworkCode];
          |                            ^
    In module 'CoreTelephony' imported from /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/PhonePermissionStrategy.m:8:
    /Applications/Xcode_16.4.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/CoreTelephony.framework/Headers/CTCarrier.h:50:61: note: property 'mobileNetworkCode' is declared deprecated here
       50 | @property (nonatomic, readonly, retain, nullable) NSString *mobileNetworkCode
          |                                                             ^
    /Applications/Xcode_16.4.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/CoreTelephony.framework/Headers/CTCarrier.h:50:61: note: 'mobileNetworkCode' has been explicitly marked deprecated here
    7 warnings generated.
    /Users/runner/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.7/ios/Classes/strategies/NotificationPermissionStrategy.m:57:9: warning: @available does not guard availability here; use if (@available) instead [-Wunsupported-availability-guard]
       57 |     if (@available(iOS 12 , *) && settings.authorizationStatus == UNAuthorizationStatusProvisional) {
          |         ^
    1 warning generated.
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_local_notifications-17.2.4/ios/Classes/FlutterLocalNotificationsPlugin.m:1238:30: warning: 'UNNotificationPresentationOptionAlert' is deprecated: first deprecated in iOS 14.0 [-Wdeprecated-declarations]
     1238 |       presentationOptions |= UNNotificationPresentationOptionAlert;
          |                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          |                              UNNotificationPresentationOptionList | UNNotificationPresentationOptionBanner
    In module 'UserNotifications' imported from /Users/runner/.pub-cache/hosted/pub.dev/flutter_local_notifications-17.2.4/ios/Classes/FlutterLocalNotificationsPlugin.h:2:
    /Applications/Xcode_16.4.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS18.5.sdk/System/Library/Frameworks/UserNotifications.framework/Headers/UNUserNotificationCenter.h:84:5: note: 'UNNotificationPresentationOptionAlert' has been explicitly marked deprecated here
       84 |     UNNotificationPresentationOptionAlert API_DEPRECATED_WITH_REPLACEMENT("UNNotificationPresentationOptionList | UNNotificationPresentationOptionBanner", macos(10.14, 11.0), ios(10.0, 14.0), watchos(3.0, 7.0), tvos(10.0, 14.0)) = (1 << 2),
          |     ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_local_notifications-17.2.4/ios/Classes/FlutterLocalNotificationsPlugin.m:6:17: warning: method definition for 'setRegisterPlugins:' not found [-Wincomplete-implementation]
        6 | @implementation FlutterLocalNotificationsPlugin {
          |                 ^
    In file included from /Users/runner/.pub-cache/hosted/pub.dev/flutter_local_notifications-17.2.4/ios/Classes/FlutterLocalNotificationsPlugin.m:1:
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_local_notifications-17.2.4/ios/Classes/FlutterLocalNotificationsPlugin.h:5:1: note: method 'setRegisterPlugins:' declared here
        5 | + (void)setRegisterPlugins:(FlutterPluginRegistrantCallback *)callback;
          | ^
    2 warnings generated.
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:763:19: warning: unnecessary check for 'iOS'; enclosing scope ensures guard will always be true
            } else if #available(iOS 16.0, *) {
                      ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:745:14: note: enclosing scope here
            else if #available(iOS 15.0, *) {
                 ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/HeadlessInAppWebView/HeadlessInAppWebView.swift:40:53: warning: 'keyWindow' was deprecated in iOS 13.0: Should not be used for applications that support multiple scenes as it returns a key window across all connected scenes
                if let keyWindow = UIApplication.shared.keyWindow {
                                                        ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppBrowser/InAppBrowserManager.swift:48:59: warning: 'statusBarStyle' was deprecated in iOS 13.0: Use the statusBarManager property of the window scene instead.
                previousStatusBarStyle = UIApplication.shared.statusBarStyle.rawValue
                                                              ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppBrowser/InAppBrowserWebViewController.swift:637:34: warning: 'statusBarStyle' was deprecated in iOS 13.0: Use the statusBarManager property of the window scene instead.
                UIApplication.shared.statusBarStyle = statusBarStyle
                                     ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:219:9: warning: 'UIMenuController' was deprecated in iOS 16.0: UIMenuController is deprecated. Use UIEditMenuInteraction instead.
            UIMenuController.shared.menuItems = []
            ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:241:32: warning: 'UIMenuItem' was deprecated in iOS 16.0: UIMenuItem is deprecated. Use UIEditMenuInteraction instead.
                        let item = UIMenuItem(title: title, action: Selector(targetMethodName))
                                   ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:242:21: warning: 'UIMenuController' was deprecated in iOS 16.0: UIMenuController is deprecated. Use UIEditMenuInteraction instead.
                        UIMenuController.shared.menuItems!.append(item)
                        ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:495:25: warning: 'clearCache' is deprecated: Use InAppWebViewManager.clearAllCache instead.
                if settings.clearCache {
                            ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:496:17: warning: 'clearCache()' is deprecated: Use InAppWebViewManager.clearAllCache instead.
                    clearCache()
                    ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:524:39: warning: 'javaScriptEnabled' was deprecated in iOS 14.0: Use WKWebpagePreferences.allowsContentJavaScript to disable content JavaScript on a per-navigation basis
                configuration.preferences.javaScriptEnabled = settings.javaScriptEnabled
                                          ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:685:42: warning: 'javaScriptEnabled' was deprecated in iOS 14.0: Use WKWebpagePreferences.allowsContentJavaScript to disable content JavaScript on a per-navigation basis
                if configuration.preferences.javaScriptEnabled {
                                             ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:1221:63: warning: 'clearCache' is deprecated: Use InAppWebViewManager.clearAllCache instead.
            if newSettingsMap["clearCache"] != nil && newSettings.clearCache {
                                                                  ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:1222:13: warning: 'clearCache()' is deprecated: Use InAppWebViewManager.clearAllCache instead.
                clearCache()
                ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:1226:39: warning: 'javaScriptEnabled' was deprecated in iOS 14.0: Use WKWebpagePreferences.allowsContentJavaScript to disable content JavaScript on a per-navigation basis
                configuration.preferences.javaScriptEnabled = newSettings.javaScriptEnabled
                                          ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:2906:38: warning: 'onFindResultReceived(activeMatchOrdinal:numberOfMatches:isDoneCounting:)' is deprecated: Use FindInteractionChannelDelegate.onFindResultReceived instead.
                webView.channelDelegate?.onFindResultReceived(activeMatchOrdinal: activeMatchOrdinal, numberOfMatches: numberOfMatches, isDoneCounting: isDoneCounting)
                                         ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:3088:38: warning: 'javaScriptEnabled' was deprecated in iOS 14.0: Use WKWebpagePreferences.allowsContentJavaScript to disable content JavaScript on a per-navigation basis
            if configuration.preferences.javaScriptEnabled {
                                         ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:3096:38: warning: 'javaScriptEnabled' was deprecated in iOS 14.0: Use WKWebpagePreferences.allowsContentJavaScript to disable content JavaScript on a per-navigation basis
            if configuration.preferences.javaScriptEnabled, let lastTouchLocation = lastTouchPoint {
                                         ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:3114:38: warning: 'javaScriptEnabled' was deprecated in iOS 14.0: Use WKWebpagePreferences.allowsContentJavaScript to disable content JavaScript on a per-navigation basis
            if configuration.preferences.javaScriptEnabled {
                                         ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebView.swift:3128:38: warning: 'javaScriptEnabled' was deprecated in iOS 14.0: Use WKWebpagePreferences.allowsContentJavaScript to disable content JavaScript on a per-navigation basis
            if configuration.preferences.javaScriptEnabled {
                                         ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/InAppWebViewSettings.swift:150:75: warning: 'javaScriptEnabled' was deprecated in iOS 14.0: Use WKWebpagePreferences.allowsContentJavaScript to disable content JavaScript on a per-navigation basis
                realSettings["javaScriptEnabled"] = configuration.preferences.javaScriptEnabled
                                                                              ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/SafariViewController/SafariViewController.swift:39:15: warning: 'init(url:entersReaderIfAvailable:)' was deprecated in iOS 11.0
            super.init(url: url, entersReaderIfAvailable: entersReaderIfAvailable)
                  ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/Types/URLCredential.swift:14:25: warning: comparing non-optional value of type '[Any]' to 'nil' always returns true
            if certificates != nil {
               ~~~~~~~~~~~~ ^  ~~~
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/Types/URLProtectionSpace.swift:18:38: warning: 'SecTrustEvaluate' was deprecated in iOS 13.0: renamed to 'SecTrustEvaluateWithError(_:_:)'
            let secTrustEvaluateStatus = SecTrustEvaluate(serverTrust, &secResult);
                                         ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/Types/URLProtectionSpace.swift:18:38: note: use 'SecTrustEvaluateWithError(_:_:)' instead
            let secTrustEvaluateStatus = SecTrustEvaluate(serverTrust, &secResult);
                                         ^~~~~~~~~~~~~~~~
                                         SecTrustEvaluateWithError
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/Types/URLProtectionSpace.swift:20:77: warning: 'SecTrustGetCertificateAtIndex' was deprecated in iOS 15.0: renamed to 'SecTrustCopyCertificateChain(_:)'
            if secTrustEvaluateStatus == errSecSuccess, let serverCertificate = SecTrustGetCertificateAtIndex(serverTrust, 0) {
                                                                                ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/Types/URLProtectionSpace.swift:20:77: note: use 'SecTrustCopyCertificateChain(_:)' instead
            if secTrustEvaluateStatus == errSecSuccess, let serverCertificate = SecTrustGetCertificateAtIndex(serverTrust, 0) {
                                                                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                                                                SecTrustCopyCertificateChain
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/Types/URLProtectionSpace.swift:40:9: warning: 'SecTrustEvaluate' was deprecated in iOS 13.0: renamed to 'SecTrustEvaluateWithError(_:_:)'
            SecTrustEvaluate(serverTrust, &secResult);
            ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/Types/URLProtectionSpace.swift:40:9: note: use 'SecTrustEvaluateWithError(_:_:)' instead
            SecTrustEvaluate(serverTrust, &secResult);
            ^~~~~~~~~~~~~~~~
            SecTrustEvaluateWithError
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/Util.swift:86:25: warning: 'spotlightSuggestion' was deprecated in iOS 10.0: renamed to 'WKDataDetectorTypes.lookupSuggestion'
                    return .spotlightSuggestion
                            ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/Util.swift:86:25: note: use 'WKDataDetectorTypes.lookupSuggestion' instead
                    return .spotlightSuggestion
                            ^~~~~~~~~~~~~~~~~~~
                            WKDataDetectorTypes.lookupSuggestion
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/Util.swift:121:31: warning: 'spotlightSuggestion' was deprecated in iOS 10.0: renamed to 'WKDataDetectorTypes.lookupSuggestion'
                if type.contains(.spotlightSuggestion) {
                                  ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/Util.swift:121:31: note: use 'WKDataDetectorTypes.lookupSuggestion' instead
                if type.contains(.spotlightSuggestion) {
                                  ^~~~~~~~~~~~~~~~~~~
                                  WKDataDetectorTypes.lookupSuggestion
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/UIApplication/VisibleViewController.swift:13:40: warning: 'keyWindow' was deprecated in iOS 13.0: Should not be used for applications that support multiple scenes as it returns a key window across all connected scenes
            guard let rootViewController = keyWindow?.rootViewController else {
                                           ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/WebAuthenticationSession/WebAuthenticationSession.swift:36:19: warning: unnecessary check for 'iOS'; enclosing scope ensures guard will always be true
            } else if #available(iOS 11.0, *) {
                      ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/WebAuthenticationSession/WebAuthenticationSession.swift:30:9: note: enclosing scope here
            if #available(iOS 12.0, *) {
            ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/WebAuthenticationSession/WebAuthenticationSession.swift:71:70: warning: 'SFAuthenticationSession' was deprecated in iOS 12.0: renamed to 'ASWebAuthenticationSession'
            } else if #available(iOS 11.0, *), let session = session as? SFAuthenticationSession {
                                                                         ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/WebAuthenticationSession/WebAuthenticationSession.swift:71:70: note: use 'ASWebAuthenticationSession' instead
            } else if #available(iOS 11.0, *), let session = session as? SFAuthenticationSession {
                                                                         ^~~~~~~~~~~~~~~~~~~~~~~
                                                                         ASWebAuthenticationSession
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/WebAuthenticationSession/WebAuthenticationSession.swift:86:70: warning: 'SFAuthenticationSession' was deprecated in iOS 12.0: renamed to 'ASWebAuthenticationSession'
            } else if #available(iOS 11.0, *), let session = session as? SFAuthenticationSession {
                                                                         ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/WebAuthenticationSession/WebAuthenticationSession.swift:86:70: note: use 'ASWebAuthenticationSession' instead
            } else if #available(iOS 11.0, *), let session = session as? SFAuthenticationSession {
                                                                         ^~~~~~~~~~~~~~~~~~~~~~~
                                                                         ASWebAuthenticationSession
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/WebAuthenticationSession/WebAuthenticationSession.swift:93:37: warning: 'windows' was deprecated in iOS 15.0: Use UIWindowScene.windows on a relevant window scene instead
            return UIApplication.shared.windows.first { $0.isKeyWindow } ?? ASPresentationAnchor()
                                        ^
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Classes/InAppWebView/WebViewChannelDelegate.swift:261:22: warning: 'clearCache()' is deprecated: Use InAppWebViewManager.clearAllCache instead.
                webView?.clearCache()
                         ^
    /* com.apple.ibtool.document.warnings */
    /Users/runner/.pub-cache/hosted/pub.dev/flutter_inappwebview_ios-1.1.2/ios/Storyboards/WebView.storyboard:global: warning: This file is set to build for a version older than the deployment target. Functionality may be limited. [9]
    lib/screens/download_tab.dart:197:43: Error: The argument type 'double' can't be assigned to the parameter type 'int'.
                    'Free: ${_formatStorageGB(freeBytes)} / ${_formatStorageGB(totalBytes)}',
                                              ^
    lib/screens/download_tab.dart:197:76: Error: The argument type 'double' can't be assigned to the parameter type 'int'.
                    'Free: ${_formatStorageGB(freeBytes)} / ${_formatStorageGB(totalBytes)}',
                                                                               ^
    Target kernel_snapshot_program failed: Exception
    Failed to package /Users/runner/work/ios1/ios1.
    Command PhaseScriptExecution failed with a nonzero exit code
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'workmanager_apple-flutter_workmanager_privacy' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'workmanager_apple' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'wakelock_plus' from project 'wakelock_plus')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'volume_controller' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'url_launcher_ios' from project 'url_launcher_ios')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'sqflite_darwin' from project 'sqflite_darwin')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'shared_preferences_foundation' from project 'shared_preferences_foundation')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'share_plus' from project 'share_plus')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'screen_brightness_ios' from project 'Pods')
    /Users/runner/work/ios1/ios1/ios/Pods/Pods.xcodeproj: warning: The iOS deployment target 'IPHONEOS_DEPLOYMENT_TARGET' is set to 9.0, but the range of supported deployment target versions is 12.0 to 18.5.99. (in target 'permission_handler_apple-permission_handler_apple_privacy' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'permission_handler_apple-permission_handler_apple_privacy' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'permission_handler_apple' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'package_info_plus' from project 'package_info_plus')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'media_kit_video' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'media_kit_libs_ios_video' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'local_auth_darwin' from project 'local_auth_darwin')
    /Users/runner/work/ios1/ios1/ios/Pods/Pods.xcodeproj: warning: The iOS deployment target 'IPHONEOS_DEPLOYMENT_TARGET' is set to 9.0, but the range of supported deployment target versions is 12.0 to 18.5.99. (in target 'flutter_local_notifications-flutter_local_notifications_privacy' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'flutter_local_notifications-flutter_local_notifications_privacy' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'flutter_local_notifications' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'flutter_inappwebview_ios-flutter_inappwebview_ios_privacy' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'flutter_inappwebview_ios' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'flutter_background_service_ios' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'file_picker' from project 'file_picker')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'disk_space_2' from project 'disk_space_2')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'connectivity_plus' from project 'connectivity_plus')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'battery_plus' from project 'battery_plus')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'WidgetExtension' from project 'Runner')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'TOCropViewController' from project 'TOCropViewController')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'SwiftyGif' from project 'SwiftyGif')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'SDWebImage' from project 'SDWebImage')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'Runner' from project 'Runner')
    note: Run script build phase 'Run Script' will be run during every build because the option to run the script phase "Based on dependency analysis" is unchecked. (in target 'Runner' from project 'Runner')
    note: Run script build phase 'Thin Binary' will be run during every build because the option to run the script phase "Based on dependency analysis" is unchecked. (in target 'Runner' from project 'Runner')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'Pods-Runner' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'OrderedSet-OrderedSet_privacy' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'OrderedSet' from project 'Pods')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'FlutterGeneratedPluginSwiftPackage' from project 'FlutterGeneratedPluginSwiftPackage')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'FlutterFramework' from project 'FlutterFramework')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'DKPhotoGallery' from project 'DKPhotoGallery')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'DKImagePickerController' from project 'DKImagePickerController')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-Owholemodule, expected -Onone (in target 'DKCamera' from project 'DKCamera')
    note: Disabling previews because SWIFT_VERSION is set and SWIFT_OPTIMIZATION_LEVEL=-O, expected -Onone (in target 'Flutter' from project 'Pods')

Error: Process completed with exit code 1.