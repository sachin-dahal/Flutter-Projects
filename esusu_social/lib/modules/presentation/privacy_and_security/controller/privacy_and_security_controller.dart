import 'package:get/state_manager.dart';

class PrivacyAndSecurityController extends GetxController {
  bool biometricsLogin = true;
  bool biometricsTransactions = false;

  changeBioLogin(bool val) {
    biometricsLogin = val;
    update();
  }

  changeBioTransactions(bool val) {
    biometricsTransactions = val;
    update();
  }
}
