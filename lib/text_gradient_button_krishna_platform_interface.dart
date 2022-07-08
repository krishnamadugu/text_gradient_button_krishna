import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'text_gradient_button_krishna_method_channel.dart';

abstract class TextGradientButtonKrishnaPlatform extends PlatformInterface {
  /// Constructs a TextGradientButtonKrishnaPlatform.
  TextGradientButtonKrishnaPlatform() : super(token: _token);

  static final Object _token = Object();

  static TextGradientButtonKrishnaPlatform _instance = MethodChannelTextGradientButtonKrishna();

  /// The default instance of [TextGradientButtonKrishnaPlatform] to use.
  ///
  /// Defaults to [MethodChannelTextGradientButtonKrishna].
  static TextGradientButtonKrishnaPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TextGradientButtonKrishnaPlatform] when
  /// they register themselves.
  static set instance(TextGradientButtonKrishnaPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
