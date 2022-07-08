import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'text_gradient_button_krishna_platform_interface.dart';

/// An implementation of [TextGradientButtonKrishnaPlatform] that uses method channels.
class MethodChannelTextGradientButtonKrishna extends TextGradientButtonKrishnaPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('text_gradient_button_krishna');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
