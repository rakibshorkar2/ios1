Run flutter build ios --release --no-codesign
Warning: Building for device with codesigning disabled. You will have to manually codesign before deploying to device.
Building com.example.dirBrowser for device (ios-release)...
Adding Swift Package Manager integration...                        45.1s
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
Running pod install...                                             11.7s
CocoaPods' output:
↳
      Preparing

    Analyzing dependencies

    Inspecting targets to integrate
      Using `ARCHS` setting to build architectures of target `Pods-Runner`: (``)
      Using `ARCHS` setting to build architectures of target `Pods-RunnerTests`: (``)

    Fetching external sources
    -> Fetching podspec for `Flutter` from `Flutter`
    -> Fetching podspec for `flutter_background_service_ios` from `.symlinks/plugins/flutter_background_service_ios/ios`
    -> Fetching podspec for `flutter_inappwebview_ios` from `.symlinks/plugins/flutter_inappwebview_ios/ios`
    -> Fetching podspec for `flutter_local_notifications` from `.symlinks/plugins/flutter_local_notifications/ios`
    -> Fetching podspec for `media_kit_libs_ios_video` from `.symlinks/plugins/media_kit_libs_ios_video/ios`
    mkdir -p .cache/xcframeworks
    rm -f .cache/xcframeworks/*.tmp .cache/xcframeworks/*-ios-universal.tar.gz
    curl -L \
    		https://github.com/media-kit/libmpv-darwin-build/releases/download/v0.6.0/libmpv-xcframeworks_v0.6.0_ios-universal-video-default.tar.gz \
    		-o .cache/xcframeworks/libmpv.tar.gz.tmp
    shasum -a 256 -c <<< 'a95bc18508af26136b8a408341c05b5585d644ec013f00ac07db09d2e28d36ae  .cache/xcframeworks/libmpv.tar.gz.tmp'
    .cache/xcframeworks/libmpv.tar.gz.tmp: OK
    mv .cache/xcframeworks/libmpv.tar.gz.tmp .cache/xcframeworks/libmpv-xcframeworks-v0.6.0-ios-universal.tar.gz
    touch .cache/xcframeworks/libmpv-xcframeworks-v0.6.0-ios-universal.tar.gz
    rm -f .cache/xcframeworks/libmpv-xcframeworks-ios-universal.tar.gz
    ln -s libmpv-xcframeworks-v0.6.0-ios-universal.tar.gz .cache/xcframeworks/libmpv-xcframeworks-ios-universal.tar.gz
    mkdir -p Frameworks
    rm -rf Frameworks/*.xcframework
    tar -xvf .cache/xcframeworks/libmpv-xcframeworks-ios-universal.tar.gz --strip-components 1 -C Frameworks
    touch Frameworks/*.xcframework
    rm -rf Frameworks/.symlinks
    mkdir -p Frameworks/.symlinks/mpv
    sed -i '' 's/\r$//g' create_framework_symlinks.sh # remove CRLF line terminator added by Flutter packaging (https://github.com/media-kit/media-kit/issues/338)
    sh create_framework_symlinks.sh Frameworks/Mpv.xcframework Frameworks/.symlinks/mpv
    -> Fetching podspec for `media_kit_video` from `.symlinks/plugins/media_kit_video/ios`
    mkdir -p .cache/headers
    rm -f .cache/headers/*.tmp .cache/headers/*.tar.gz
    curl -L \
    		https://github.com/mpv-player/mpv/archive/refs/tags/v0.36.0.tar.gz \
    		-o .cache/headers/mpv.tar.gz.tmp
    shasum -a 256 -c <<< '29abc44f8ebee013bb2f9fe14d80b30db19b534c679056e4851ceadf5a5e8bf6  .cache/headers/mpv.tar.gz.tmp'
    .cache/headers/mpv.tar.gz.tmp: OK
    mv .cache/headers/mpv.tar.gz.tmp .cache/headers/mpv-v0.36.0.tar.gz
    touch .cache/headers/mpv-v0.36.0.tar.gz
    rm -f .cache/headers/mpv.tar.gz
    ln -s mpv-v0.36.0.tar.gz .cache/headers/mpv.tar.gz
    mkdir -p /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Headers/mpv
    tar -xvf .cache/headers/mpv.tar.gz --strip-components 2 -C /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Headers/mpv/ 'mpv-*/libmpv/*.h'
    touch /Users/runner/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/ios/Headers/mpv/*.h
    media_kit: INFO: package:media_kit_libs_ios_video found
    -> Fetching podspec for `permission_handler_apple` from `.symlinks/plugins/permission_handler_apple/ios`
    -> Fetching podspec for `screen_brightness_ios` from `.symlinks/plugins/screen_brightness_ios/ios`
    -> Fetching podspec for `volume_controller` from `.symlinks/plugins/volume_controller/ios`
    -> Fetching podspec for `workmanager_apple` from `.symlinks/plugins/workmanager_apple/ios`

    Resolving dependencies of `Podfile`

    Adding spec repo `trunk` with CDN `https://cdn.cocoapods.org/`
      CDN: trunk Relative path downloaded: CocoaPods-version.yml, save ETag: "6a4244ee-38"
      CDN: trunk Relative path: CocoaPods-version.yml exists! Returning local because checking is only performed in repo update
    [!] CocoaPods could not find compatible versions for pod "workmanager_apple":
      In Podfile:
        workmanager_apple (from `.symlinks/plugins/workmanager_apple/ios`)

    Specs satisfying the `workmanager_apple (from `.symlinks/plugins/workmanager_apple/ios`)` dependency were found, but they required a higher minimum deployment target.

    /opt/homebrew/lib/ruby/gems/3.4.0/gems/molinillo-0.8.0/lib/molinillo/resolution.rb:317:in 'Molinillo::Resolver::Resolution#raise_error_unless_state'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/molinillo-0.8.0/lib/molinillo/resolution.rb:299:in 'block in Molinillo::Resolver::Resolution#unwind_for_conflict'
    <internal:kernel>:91:in 'Kernel#tap'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/molinillo-0.8.0/lib/molinillo/resolution.rb:297:in 'Molinillo::Resolver::Resolution#unwind_for_conflict'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/molinillo-0.8.0/lib/molinillo/resolution.rb:682:in 'Molinillo::Resolver::Resolution#attempt_to_activate'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/molinillo-0.8.0/lib/molinillo/resolution.rb:254:in 'Molinillo::Resolver::Resolution#process_topmost_state'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/molinillo-0.8.0/lib/molinillo/resolution.rb:182:in 'Molinillo::Resolver::Resolution#resolve'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/molinillo-0.8.0/lib/molinillo/resolver.rb:43:in 'Molinillo::Resolver#resolve'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/cocoapods-1.16.2/lib/cocoapods/resolver.rb:94:in 'Pod::Resolver#resolve'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/cocoapods-1.16.2/lib/cocoapods/installer/analyzer.rb:1082:in 'block in Pod::Installer::Analyzer#resolve_dependencies'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/cocoapods-1.16.2/lib/cocoapods/user_interface.rb:64:in 'Pod::UserInterface.section'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/cocoapods-1.16.2/lib/cocoapods/installer/analyzer.rb:1080:in 'Pod::Installer::Analyzer#resolve_dependencies'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/cocoapods-1.16.2/lib/cocoapods/installer/analyzer.rb:125:in 'Pod::Installer::Analyzer#analyze'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/cocoapods-1.16.2/lib/cocoapods/installer.rb:422:in 'Pod::Installer#analyze'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/cocoapods-1.16.2/lib/cocoapods/installer.rb:244:in 'block in Pod::Installer#resolve_dependencies'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/cocoapods-1.16.2/lib/cocoapods/user_interface.rb:64:in 'Pod::UserInterface.section'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/cocoapods-1.16.2/lib/cocoapods/installer.rb:243:in 'Pod::Installer#resolve_dependencies'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/cocoapods-1.16.2/lib/cocoapods/installer.rb:162:in 'Pod::Installer#install!'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/cocoapods-1.16.2/lib/cocoapods/command/install.rb:52:in 'Pod::Command::Install#run'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/claide-1.1.0/lib/claide/command.rb:334:in 'CLAide::Command.run'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/cocoapods-1.16.2/lib/cocoapods/command.rb:52:in 'Pod::Command.run'
    /opt/homebrew/lib/ruby/gems/3.4.0/gems/cocoapods-1.16.2/bin/pod:55:in '<top (required)>'
    /opt/homebrew/lib/ruby/site_ruby/3.4.0/rubygems.rb:305:in 'Kernel#load'
    /opt/homebrew/lib/ruby/site_ruby/3.4.0/rubygems.rb:305:in 'Gem.activate_and_load_bin_path'
    /opt/homebrew/lib/ruby/gems/3.4.0/bin/pod:25:in '<main>'

Error output from CocoaPods:
↳
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
    
 61 18.8M   61 11.6M    0     0  19.4M      0 --:--:-- --:--:-- --:--:-- 19.4M
100 18.8M  100 18.8M    0     0  29.4M      0 --:--:-- --:--:-- --:--:--  172M
    x Mbedx509.xcframework/
    x Freetype.xcframework/
    x Avformat.xcframework/
    x Fribidi.xcframework/
    x Mbedtls.xcframework/
    x Uchardet.xcframework/
    x Png16.xcframework/
    x Dav1d.xcframework/
    x Mbedcrypto.xcframework/
    x Harfbuzz.xcframework/
    x Swresample.xcframework/
    x Avfilter.xcframework/
    x Avutil.xcframework/
    x Swscale.xcframework/
    x Xml2.xcframework/
    x Avcodec.xcframework/
    x Ass.xcframework/
    x Mpv.xcframework/
    x Mpv.xcframework/ios-arm64_x86_64-simulator/
    x Mpv.xcframework/ios-arm64/
    x Mpv.xcframework/Info.plist
    x Mpv.xcframework/ios-arm64/Mpv.framework/
    x Mpv.xcframework/ios-arm64/Mpv.framework/Mpv
    x Mpv.xcframework/ios-arm64/Mpv.framework/Info.plist
    x Mpv.xcframework/ios-arm64_x86_64-simulator/Mpv.framework/
    x Mpv.xcframework/ios-arm64_x86_64-simulator/Mpv.framework/Mpv
    x Mpv.xcframework/ios-arm64_x86_64-simulator/Mpv.framework/Info.plist
    x Ass.xcframework/ios-arm64_x86_64-simulator/
    x Ass.xcframework/ios-arm64/
    x Ass.xcframework/Info.plist
    x Ass.xcframework/ios-arm64/Ass.framework/
    x Ass.xcframework/ios-arm64/Ass.framework/Ass
    x Ass.xcframework/ios-arm64/Ass.framework/Info.plist
    x Ass.xcframework/ios-arm64_x86_64-simulator/Ass.framework/
    x Ass.xcframework/ios-arm64_x86_64-simulator/Ass.framework/Ass
    x Ass.xcframework/ios-arm64_x86_64-simulator/Ass.framework/Info.plist
    x Avcodec.xcframework/ios-arm64_x86_64-simulator/
    x Avcodec.xcframework/ios-arm64/
    x Avcodec.xcframework/Info.plist
    x Avcodec.xcframework/ios-arm64/Avcodec.framework/
    x Avcodec.xcframework/ios-arm64/Avcodec.framework/Avcodec
    x Avcodec.xcframework/ios-arm64/Avcodec.framework/Info.plist
    x Avcodec.xcframework/ios-arm64_x86_64-simulator/Avcodec.framework/
    x Avcodec.xcframework/ios-arm64_x86_64-simulator/Avcodec.framework/Avcodec
    x Avcodec.xcframework/ios-arm64_x86_64-simulator/Avcodec.framework/Info.plist
    x Xml2.xcframework/ios-arm64_x86_64-simulator/
    x Xml2.xcframework/ios-arm64/
    x Xml2.xcframework/Info.plist
    x Xml2.xcframework/ios-arm64/Xml2.framework/
    x Xml2.xcframework/ios-arm64/Xml2.framework/Xml2
    x Xml2.xcframework/ios-arm64/Xml2.framework/Info.plist
    x Xml2.xcframework/ios-arm64_x86_64-simulator/Xml2.framework/
    x Xml2.xcframework/ios-arm64_x86_64-simulator/Xml2.framework/Xml2
    x Xml2.xcframework/ios-arm64_x86_64-simulator/Xml2.framework/Info.plist
    x Swscale.xcframework/ios-arm64_x86_64-simulator/
    x Swscale.xcframework/ios-arm64/
    x Swscale.xcframework/Info.plist
    x Swscale.xcframework/ios-arm64/Swscale.framework/
    x Swscale.xcframework/ios-arm64/Swscale.framework/Swscale
    x Swscale.xcframework/ios-arm64/Swscale.framework/Info.plist
    x Swscale.xcframework/ios-arm64_x86_64-simulator/Swscale.framework/
    x Swscale.xcframework/ios-arm64_x86_64-simulator/Swscale.framework/Swscale
    x Swscale.xcframework/ios-arm64_x86_64-simulator/Swscale.framework/Info.plist
    x Avutil.xcframework/ios-arm64_x86_64-simulator/
    x Avutil.xcframework/ios-arm64/
    x Avutil.xcframework/Info.plist
    x Avutil.xcframework/ios-arm64/Avutil.framework/
    x Avutil.xcframework/ios-arm64/Avutil.framework/Avutil
    x Avutil.xcframework/ios-arm64/Avutil.framework/Info.plist
    x Avutil.xcframework/ios-arm64_x86_64-simulator/Avutil.framework/
    x Avutil.xcframework/ios-arm64_x86_64-simulator/Avutil.framework/Avutil
    x Avutil.xcframework/ios-arm64_x86_64-simulator/Avutil.framework/Info.plist
    x Avfilter.xcframework/ios-arm64_x86_64-simulator/
    x Avfilter.xcframework/ios-arm64/
    x Avfilter.xcframework/Info.plist
    x Avfilter.xcframework/ios-arm64/Avfilter.framework/
    x Avfilter.xcframework/ios-arm64/Avfilter.framework/Avfilter
    x Avfilter.xcframework/ios-arm64/Avfilter.framework/Info.plist
    x Avfilter.xcframework/ios-arm64_x86_64-simulator/Avfilter.framework/
    x Avfilter.xcframework/ios-arm64_x86_64-simulator/Avfilter.framework/Avfilter
    x Avfilter.xcframework/ios-arm64_x86_64-simulator/Avfilter.framework/Info.plist
    x Swresample.xcframework/ios-arm64_x86_64-simulator/
    x Swresample.xcframework/ios-arm64/
    x Swresample.xcframework/Info.plist
    x Swresample.xcframework/ios-arm64/Swresample.framework/
    x Swresample.xcframework/ios-arm64/Swresample.framework/Swresample
    x Swresample.xcframework/ios-arm64/Swresample.framework/Info.plist
    x Swresample.xcframework/ios-arm64_x86_64-simulator/Swresample.framework/
    x Swresample.xcframework/ios-arm64_x86_64-simulator/Swresample.framework/Swresample
    x Swresample.xcframework/ios-arm64_x86_64-simulator/Swresample.framework/Info.plist
    x Harfbuzz.xcframework/ios-arm64_x86_64-simulator/
    x Harfbuzz.xcframework/ios-arm64/
    x Harfbuzz.xcframework/Info.plist
    x Harfbuzz.xcframework/ios-arm64/Harfbuzz.framework/
    x Harfbuzz.xcframework/ios-arm64/Harfbuzz.framework/Harfbuzz
    x Harfbuzz.xcframework/ios-arm64/Harfbuzz.framework/Info.plist
    x Harfbuzz.xcframework/ios-arm64_x86_64-simulator/Harfbuzz.framework/
    x Harfbuzz.xcframework/ios-arm64_x86_64-simulator/Harfbuzz.framework/Harfbuzz
    x Harfbuzz.xcframework/ios-arm64_x86_64-simulator/Harfbuzz.framework/Info.plist
    x Mbedcrypto.xcframework/ios-arm64_x86_64-simulator/
    x Mbedcrypto.xcframework/ios-arm64/
    x Mbedcrypto.xcframework/Info.plist
    x Mbedcrypto.xcframework/ios-arm64/Mbedcrypto.framework/
    x Mbedcrypto.xcframework/ios-arm64/Mbedcrypto.framework/Mbedcrypto
    x Mbedcrypto.xcframework/ios-arm64/Mbedcrypto.framework/Info.plist
    x Mbedcrypto.xcframework/ios-arm64_x86_64-simulator/Mbedcrypto.framework/
    x Mbedcrypto.xcframework/ios-arm64_x86_64-simulator/Mbedcrypto.framework/Mbedcrypto
    x Mbedcrypto.xcframework/ios-arm64_x86_64-simulator/Mbedcrypto.framework/Info.plist
    x Dav1d.xcframework/ios-arm64_x86_64-simulator/
    x Dav1d.xcframework/ios-arm64/
    x Dav1d.xcframework/Info.plist
    x Dav1d.xcframework/ios-arm64/Dav1d.framework/
    x Dav1d.xcframework/ios-arm64/Dav1d.framework/Dav1d
    x Dav1d.xcframework/ios-arm64/Dav1d.framework/Info.plist
    x Dav1d.xcframework/ios-arm64_x86_64-simulator/Dav1d.framework/
    x Dav1d.xcframework/ios-arm64_x86_64-simulator/Dav1d.framework/Dav1d
    x Dav1d.xcframework/ios-arm64_x86_64-simulator/Dav1d.framework/Info.plist
    x Png16.xcframework/ios-arm64_x86_64-simulator/
    x Png16.xcframework/ios-arm64/
    x Png16.xcframework/Info.plist
    x Png16.xcframework/ios-arm64/Png16.framework/
    x Png16.xcframework/ios-arm64/Png16.framework/Png16
    x Png16.xcframework/ios-arm64/Png16.framework/Info.plist
    x Png16.xcframework/ios-arm64_x86_64-simulator/Png16.framework/
    x Png16.xcframework/ios-arm64_x86_64-simulator/Png16.framework/Png16
    x Png16.xcframework/ios-arm64_x86_64-simulator/Png16.framework/Info.plist
    x Uchardet.xcframework/ios-arm64_x86_64-simulator/
    x Uchardet.xcframework/ios-arm64/
    x Uchardet.xcframework/Info.plist
    x Uchardet.xcframework/ios-arm64/Uchardet.framework/
    x Uchardet.xcframework/ios-arm64/Uchardet.framework/Uchardet
    x Uchardet.xcframework/ios-arm64/Uchardet.framework/Info.plist
    x Uchardet.xcframework/ios-arm64_x86_64-simulator/Uchardet.framework/
    x Uchardet.xcframework/ios-arm64_x86_64-simulator/Uchardet.framework/Uchardet
    x Uchardet.xcframework/ios-arm64_x86_64-simulator/Uchardet.framework/Info.plist
    x Mbedtls.xcframework/ios-arm64_x86_64-simulator/
    x Mbedtls.xcframework/ios-arm64/
    x Mbedtls.xcframework/Info.plist
    x Mbedtls.xcframework/ios-arm64/Mbedtls.framework/
    x Mbedtls.xcframework/ios-arm64/Mbedtls.framework/Mbedtls
    x Mbedtls.xcframework/ios-arm64/Mbedtls.framework/Info.plist
    x Mbedtls.xcframework/ios-arm64_x86_64-simulator/Mbedtls.framework/
    x Mbedtls.xcframework/ios-arm64_x86_64-simulator/Mbedtls.framework/Mbedtls
    x Mbedtls.xcframework/ios-arm64_x86_64-simulator/Mbedtls.framework/Info.plist
    x Fribidi.xcframework/ios-arm64_x86_64-simulator/
    x Fribidi.xcframework/ios-arm64/
    x Fribidi.xcframework/Info.plist
    x Fribidi.xcframework/ios-arm64/Fribidi.framework/
    x Fribidi.xcframework/ios-arm64/Fribidi.framework/Fribidi
    x Fribidi.xcframework/ios-arm64/Fribidi.framework/Info.plist
    x Fribidi.xcframework/ios-arm64_x86_64-simulator/Fribidi.framework/
    x Fribidi.xcframework/ios-arm64_x86_64-simulator/Fribidi.framework/Fribidi
    x Fribidi.xcframework/ios-arm64_x86_64-simulator/Fribidi.framework/Info.plist
    x Avformat.xcframework/ios-arm64_x86_64-simulator/
    x Avformat.xcframework/ios-arm64/
    x Avformat.xcframework/Info.plist
    x Avformat.xcframework/ios-arm64/Avformat.framework/
    x Avformat.xcframework/ios-arm64/Avformat.framework/Avformat
    x Avformat.xcframework/ios-arm64/Avformat.framework/Info.plist
    x Avformat.xcframework/ios-arm64_x86_64-simulator/Avformat.framework/
    x Avformat.xcframework/ios-arm64_x86_64-simulator/Avformat.framework/Avformat
    x Avformat.xcframework/ios-arm64_x86_64-simulator/Avformat.framework/Info.plist
    x Freetype.xcframework/ios-arm64_x86_64-simulator/
    x Freetype.xcframework/ios-arm64/
    x Freetype.xcframework/Info.plist
    x Freetype.xcframework/ios-arm64/Freetype.framework/
    x Freetype.xcframework/ios-arm64/Freetype.framework/Freetype
    x Freetype.xcframework/ios-arm64/Freetype.framework/Info.plist
    x Freetype.xcframework/ios-arm64_x86_64-simulator/Freetype.framework/
    x Freetype.xcframework/ios-arm64_x86_64-simulator/Freetype.framework/Freetype
    x Freetype.xcframework/ios-arm64_x86_64-simulator/Freetype.framework/Info.plist
    x Mbedx509.xcframework/ios-arm64_x86_64-simulator/
    x Mbedx509.xcframework/ios-arm64/
    x Mbedx509.xcframework/Info.plist
    x Mbedx509.xcframework/ios-arm64/Mbedx509.framework/
    x Mbedx509.xcframework/ios-arm64/Mbedx509.framework/Mbedx509
    x Mbedx509.xcframework/ios-arm64/Mbedx509.framework/Info.plist
    x Mbedx509.xcframework/ios-arm64_x86_64-simulator/Mbedx509.framework/
    x Mbedx509.xcframework/ios-arm64_x86_64-simulator/Mbedx509.framework/Mbedx509
    x Mbedx509.xcframework/ios-arm64_x86_64-simulator/Mbedx509.framework/Info.plist
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
    
 15 3329k   15  521k    0     0   444k      0  0:00:07  0:00:01  0:00:06  444k
100 3329k  100 3329k    0     0  2430k      0  0:00:01  0:00:01 --:--:-- 13.9M
    x client.h
    x render.h
    x render_gl.h
    x stream_cb.h

    [!] Automatically assigning platform `iOS` with version `13.0` on target `Runner` because no platform was specified. Please specify a platform for this target in your Podfile. See `https://guides.cocoapods.org/syntax/podfile.html#platform`.

Error: The plugin "workmanager_apple" requires a higher minimum iOS deployment version than your application is targeting.
To build, increase your application's deployment target to at least 14.0 as described at https://flutter.dev/to/ios-deploy
Error running pod install
Error: Process completed with exit code 1.