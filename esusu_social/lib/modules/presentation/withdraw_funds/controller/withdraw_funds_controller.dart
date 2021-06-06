import 'package:get/state_manager.dart';

class WithdrawFundController extends GetxController {
  String selectedBank = "Bank 1";

  List<String> bankList = ["Bank 1", "Bank 2", "Bank 3", "Bank 4"];

  void changeBank(String val) {
    selectedBank = val;
    update();
  }
}
