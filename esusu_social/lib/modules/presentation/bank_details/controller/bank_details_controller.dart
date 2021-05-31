import 'package:get/state_manager.dart';

class BankDetailsController extends GetxController {
  bool isList = false;

  void updateList() {
    isList = true;
    update();
  }
}
