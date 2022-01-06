#import "NetDemoYuPlugin.h"
#if __has_include(<net_demo_yu/net_demo_yu-Swift.h>)
#import <net_demo_yu/net_demo_yu-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "net_demo_yu-Swift.h"
#endif

@implementation NetDemoYuPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNetDemoYuPlugin registerWithRegistrar:registrar];
}
@end
