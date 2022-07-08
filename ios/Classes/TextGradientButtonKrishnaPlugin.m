#import "TextGradientButtonKrishnaPlugin.h"
#if __has_include(<text_gradient_button_krishna/text_gradient_button_krishna-Swift.h>)
#import <text_gradient_button_krishna/text_gradient_button_krishna-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "text_gradient_button_krishna-Swift.h"
#endif

@implementation TextGradientButtonKrishnaPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTextGradientButtonKrishnaPlugin registerWithRegistrar:registrar];
}
@end
