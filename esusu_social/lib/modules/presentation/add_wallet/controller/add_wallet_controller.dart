import 'package:get/state_manager.dart';

class AddWalletController extends GetxController {
  bool isBankSelected = true;

  void toggleBankUssd([bank = false]) {
    isBankSelected = bank;
    update();
  }
}
