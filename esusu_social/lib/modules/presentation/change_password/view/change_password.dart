import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kButton.dart';
import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: Column(
          children: [
            KAppBar(text: "Change Password"),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  SizedBox(height: 10.0),
                  Text("CURRENT PASSWORD",
                      style: kLinkLabelStyle.copyWith(
                          color:
                              isDarkModeON ? kTertiaryColor : kPrimaryColor)),
                  SizedBox(height: 5.0),
                  KTextField(
                    isBgColor: isDarkModeON,
                    hintText: "Type Current Password Here...",
                  ),
                  SizedBox(height: 25.0),
                  Text("NEW PASSWORD",
                      style: kLinkLabelStyle.copyWith(
                          color:
                              isDarkModeON ? kTertiaryColor : kPrimaryColor)),
                  SizedBox(height: 5.0),
                  KTextField(
                    isBgColor: isDarkModeON,
                    hintText: "Type New Password Here...",
                  ),
                  SizedBox(height: 25.0),
                  Text("CONFIRM NEW PASSWORD",
                      style: kLinkLabelStyle.copyWith(
                          color:
                              isDarkModeON ? kTertiaryColor : kPrimaryColor)),
                  SizedBox(height: 5.0),
                  KTextField(
                    isBgColor: isDarkModeON,
                    hintText: "Confirm New Password Here...",
                  ),
                ],
              ),
            ),
            KButton(text: 'Save', onPressed: () {}),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
