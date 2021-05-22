import 'package:get/state_manager.dart';

class NotificationsPageController extends GetxController {
  bool option1 = true;
  bool option2 = false;
  bool option3 = false;

  changeOption1(bool val) {
    option1 = val;
    update();
  }

  changeOption2(bool val) {
    option2 = val;
    update();
  }

  changeOption3(bool val) {
    option3 = val;
    update();
  }
}
