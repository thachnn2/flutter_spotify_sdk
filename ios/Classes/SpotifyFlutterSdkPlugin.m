#import "SpotifyFlutterSdkPlugin.h"
#if __has_include(<spotify_flutter_sdk/spotify_flutter_sdk-Swift.h>)
#import <spotify_flutter_sdk/spotify_flutter_sdk-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "spotify_flutter_sdk-Swift.h"
#endif

@implementation SpotifyFlutterSdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSpotifyFlutterSdkPlugin registerWithRegistrar:registrar];
}
@end
