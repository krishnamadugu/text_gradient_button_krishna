import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:text_gradient_button_krishna/text_gradient_button_krishna_method_channel.dart';

void main() {
  MethodChannelTextGradientButtonKrishna platform = MethodChannelTextGradientButtonKrishna();
  const MethodChannel channel = MethodChannel('text_gradient_button_krishna');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
