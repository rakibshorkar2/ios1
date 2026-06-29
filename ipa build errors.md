Run flutter build ios --release --no-codesign
Warning: Building for device with codesigning disabled. You will have to manually codesign before deploying to device.
Xcode failed to resolve Swift Package Manager dependencies:
2026-06-29 12:34:12.836 xcodebuild[3479:19267] Error Domain=NSCocoaErrorDomain Code=3840 "JSON text did not start with array or object and option to allow fragments not set. around line 1, column 0." UserInfo={NSDebugDescription=JSON text did not start with array or object and option to allow fragments not set. around line 1, column 0., NSJSONSerializationErrorIndex=0}
2026-06-29 12:34:12.845 xcodebuild[3479:19267] Writing error result bundle to /var/folders/mn/js5hmsy13552y330w_94s79h0000gn/T/ResultBundle_2026-29-06_12-34-0012.xcresult
xcodebuild: error: Unable to read project 'Runner.xcodeproj'.
	Reason: The project ‘Runner’ is damaged and cannot be opened due to a parse error. Examine the project file for invalid edits or unresolved source control conflicts.

Path: /Users/runner/work/ios1/ios1/ios/Runner.xcodeproj



Error: Process completed with exit code 1.