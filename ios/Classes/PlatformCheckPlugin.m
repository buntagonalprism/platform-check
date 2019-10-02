#import "PlatformCheckPlugin.h"
#import <platform_check/platform_check-Swift.h>

@implementation PlatformCheckPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPlatformCheckPlugin registerWithRegistrar:registrar];
}
@end
