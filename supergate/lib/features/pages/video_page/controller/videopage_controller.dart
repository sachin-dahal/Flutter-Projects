import 'package:get/state_manager.dart';

class VideoPageController extends GetxController {
  bool isOpen = false;

  setOpened([bool open = true]) {
    isOpen = open;
    update();
  }
}
