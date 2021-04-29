import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';

class HomepageController extends GetxController {
  TextEditingController amountController;
  bool isEnabled = false;

  @override
  void onInit() {
    super.onInit();
    amountController = TextEditingController();
  }

  void onChg(String val) {
    if (val == null || val == "") {
      isEnabled = false;
      update();
    } else {
      isEnabled = true;
      update();
    }
  }

  @override
  void onClose() {
    super.onClose();
    amountController.dispose();
  }
}
