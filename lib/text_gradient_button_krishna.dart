
import 'text_gradient_button_krishna_platform_interface.dart';

class TextGradientButtonKrishna {
  Future<String?> getPlatformVersion() {
    return TextGradientButtonKrishnaPlatform.instance.getPlatformVersion();
  }
}
