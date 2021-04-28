import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';

class SearchPageController extends GetxController {
  TextEditingController searchController;
  bool isFilled = false;

  @override
  void onInit() {
    super.onInit();
    searchController = TextEditingController();
  }

  setFill([bool fill = true]) {
    if (searchController.text.length > 0 && searchController.text != null) {
      isFilled = fill;
    } else {
      isFilled = false;
    }
    update();
  }

  void checkText() {
    {
      isFilled = true;
    }
    update();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
