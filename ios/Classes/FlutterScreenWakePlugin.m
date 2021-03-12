#import "FlutterScreenWakePlugin.h"
#if __has_include(<flutter_screen_wake/flutter_screen_wake-Swift.h>)
#import <flutter_screen_wake/flutter_screen_wake-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_screen_wake-Swift.h"
#endif

@implementation FlutterScreenWakePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterScreenWakePlugin registerWithRegistrar:registrar];
}
@end
