import 'package:get/state_manager.dart';

class HomePageController extends GetxController {
  int selectedIndex = 0;

  void updateIndex(int index) {
    selectedIndex = index;
    update();
  }
}
