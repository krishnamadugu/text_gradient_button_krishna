import 'package:flutter_test/flutter_test.dart';
import 'package:text_gradient_button_krishna/text_gradient_button_krishna.dart';
import 'package:text_gradient_button_krishna/text_gradient_button_krishna_platform_interface.dart';
import 'package:text_gradient_button_krishna/text_gradient_button_krishna_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTextGradientButtonKrishnaPlatform 
    with MockPlatformInterfaceMixin
    implements TextGradientButtonKrishnaPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TextGradientButtonKrishnaPlatform initialPlatform = TextGradientButtonKrishnaPlatform.instance;

  test('$MethodChannelTextGradientButtonKrishna is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTextGradientButtonKrishna>());
  });

  test('getPlatformVersion', () async {
    TextGradientButtonKrishna textGradientButtonKrishnaPlugin = TextGradientButtonKrishna();
    MockTextGradientButtonKrishnaPlatform fakePlatform = MockTextGradientButtonKrishnaPlatform();
    TextGradientButtonKrishnaPlatform.instance = fakePlatform;
  
    expect(await textGradientButtonKrishnaPlugin.getPlatformVersion(), '42');
  });
}
