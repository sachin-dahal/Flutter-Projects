import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';

class ProfilePageController extends GetxController {
  TextEditingController fullnameController;
  TextEditingController phoneController;
  TextEditingController emailController;

  bool first = true;
  bool second = false;

  void firstTrue() {
    first = true;
    second = false;
    update();
  }

  void secondTrue() {
    first = false;
    second = true;
    update();
  }

  bool readOnly = true;

  void setWrite() {
    readOnly = false;
    update();
  }

  String selectedCard = "Card";
  List<String> cardList = [
    'Card',
    'PayPal',
    'Amazon',
  ];

  void onChanged(val) {
    selectedCard = val;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    fullnameController = TextEditingController(text: "Rias Nawel Arit");
    phoneController = TextEditingController(text: "147852147");
    emailController = TextEditingController(text: "rias.nawel@gmail.com");
  }

  @override
  void onClose() {
    super.onClose();
    fullnameController.dispose();
    phoneController.dispose();
    emailController.dispose();
  }
}
