import 'package:esusu_social/modules/presentation/account_page/view/account_page.dart';
import 'package:esusu_social/modules/presentation/bottom_page_1/view/bottom_page_1.dart';
import 'package:esusu_social/modules/presentation/bottom_page_2/view/bottom_page_2.dart';
import 'package:esusu_social/modules/presentation/homepage/view/homepage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/state_manager.dart';

class BottombarController extends GetxController {
  int selectedIndex = 0;

  List<Widget> childrens = [
    Homepage(),
    BottomPage1(),
    BottomPage2(),
    AccountPage(),
  ];

  List<BottomNavigationBarItem> bottomNavBarItem = [
    BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home), label: ""),
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.fileInvoiceDollar), label: ""),
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.handHoldingUsd), label: ""),
    BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.userAlt), label: ""),
  ];

  void changeIndex(int index) {
    selectedIndex = index;
    update();
  }
}
