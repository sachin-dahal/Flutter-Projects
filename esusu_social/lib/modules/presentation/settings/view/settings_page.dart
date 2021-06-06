import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/account_page/view/account_page.dart';
import 'package:esusu_social/modules/presentation/bottom_bar/controller/bottom_bar_controller.dart';
import 'package:esusu_social/modules/presentation/bottom_bar/view/bottom_bar_page.dart';
import 'package:esusu_social/modules/presentation/settings/controller/settings_page_controller.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final SettingsPageController _settingsPageController =
      Get.put(SettingsPageController());

  final BottombarController _bottombarController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: WillPopScope(
        onWillPop: () {
          _bottombarController.update();
          Get.off(BottomBarPage());
          return;
        },
        child: Container(
          child: Column(
            children: [
              KAppBar(text: "Notifications"),
              SizedBox(height: 20.0),
              GetBuilder<SettingsPageController>(
                  builder: (_settingsPageController) {
                return Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Option 1",
                            style: kLabelStyle.copyWith(
                                color:
                                    isDarkModeON ? kTextColor3 : kTextColor1),
                          ),
                          Transform.scale(
                            scale: 0.8,
                            child: CupertinoSwitch(
                              activeColor: kPrimaryColor,
                              value: _settingsPageController.option1,
                              onChanged: _settingsPageController.changeOption1,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Option 2",
                            style: kLabelStyle.copyWith(
                                color:
                                    isDarkModeON ? kTextColor3 : kTextColor1),
                          ),
                          Transform.scale(
                            scale: 0.8,
                            child: CupertinoSwitch(
                              activeColor: kPrimaryColor,
                              value: _settingsPageController.option2,
                              onChanged: _settingsPageController.changeOption2,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Option 3",
                            style: kLabelStyle.copyWith(
                                color:
                                    isDarkModeON ? kTextColor3 : kTextColor1),
                          ),
                          Transform.scale(
                            scale: 0.8,
                            child: CupertinoSwitch(
                              activeColor: kPrimaryColor,
                              value: _settingsPageController.option3,
                              onChanged: _settingsPageController.changeOption3,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dark Mode",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color:
                                      isDarkModeON ? kTextColor3 : kTextColor1,
                                  fontSize: 16.0),
                            ),
                          ),
                          Switch(
                              value: isDarkModeON,
                              activeColor: Colors.lightBlue,
                              activeTrackColor: kTextColor1.withOpacity(0.5),
                              onChanged: (val) {
                                setState(() {
                                  isDarkModeON = val;
                                  _bottombarController.update();
                                });
                              })
                        ],
                      ),
                    ],
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
