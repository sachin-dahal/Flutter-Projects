import 'package:esusu_social/modules/presentation/bottom_bar/controller/bottom_bar_controller.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarPage extends StatelessWidget {
  final BottombarController _bottombarController =
      Get.put(BottombarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: GetBuilder<BottombarController>(
          builder: (_bottombarController) {
            return _bottombarController
                .childrens[_bottombarController.selectedIndex];
          },
        ),
      ),
      bottomNavigationBar: GetBuilder<BottombarController>(
        builder: (_bottombarController) {
          return BottomNavigationBar(
            currentIndex: _bottombarController.selectedIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: _bottombarController.bottomNavBarItem,
            onTap: _bottombarController.changeIndex,
            backgroundColor: isDarkModeON ? kPrimaryColor : kTextColor3,
            selectedIconTheme: IconThemeData(
                color: isDarkModeON ? kTertiaryColor : kPrimaryColor,
                size: 26.0),
            unselectedIconTheme:
                IconThemeData(color: Colors.grey[400], size: 22.0),
          );
        },
      ),
    );
  }
}
