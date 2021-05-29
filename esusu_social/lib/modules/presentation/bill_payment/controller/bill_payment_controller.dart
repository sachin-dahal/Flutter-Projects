import 'package:get/state_manager.dart';

class BillPaymentController extends GetxController {
  String selectedItem = "1 GB, 400 Minutes @ 900";

  List<String> packageList = [
    "1 GB, 400 Minutes @ 900",
    "5 GB, 800 Minutes @ 1700",
    "10 GB, 1200 Minutes @ 3200",
  ];

  void changeIndex(String val) {
    selectedItem = val;
    update();
  }
}
