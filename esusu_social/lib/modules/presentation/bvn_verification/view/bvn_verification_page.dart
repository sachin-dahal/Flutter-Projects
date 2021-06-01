import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kButton.dart';
import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';

class BVNVerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: Column(
          children: [
            KAppBar(text: "BVN Verification"),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child:
                  KTextField(isBgColor: isDarkModeON, hintText: "Enter BVN..."),
            ),
            SizedBox(height: 50.0),
            KButton(text: "Verify BVN", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
