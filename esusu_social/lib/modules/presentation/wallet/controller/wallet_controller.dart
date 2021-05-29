import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';

class WalletController extends GetxController {
  TextEditingController amountTransferController;

  @override
  void onInit() {
    super.onInit();
    amountTransferController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    amountTransferController.dispose();
  }
}
