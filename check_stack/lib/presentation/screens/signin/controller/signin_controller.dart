import 'package:get/state_manager.dart';

class SignInController extends GetxController {
  bool isObscure = true;

  void toggle() {
    isObscure = !isObscure;
    update();
  }
}
