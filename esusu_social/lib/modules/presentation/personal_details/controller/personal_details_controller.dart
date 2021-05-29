import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';

class PersonalDetailsController extends GetxController {
  TextEditingController nameController;
  TextEditingController dobController;
  TextEditingController emailController;

  String selectedItem = "Male";

  List<String> genderList = [
    "Male",
    "Female",
    "Transgender",
  ];

  void changeIndex(String val) {
    selectedItem = val;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController(text: "Darrell Chan");
    dobController = TextEditingController(text: "May 05, 1996");
    emailController = TextEditingController(text: "abc@gmail.com");
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    dobController.dispose();
    emailController.dispose();
  }
}
