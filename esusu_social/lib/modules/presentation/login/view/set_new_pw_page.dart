import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/login/view/otp_verify_page.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SetNewPasswordPage extends StatelessWidget {
  final double height = Get.height;
  final double width = Get.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: height * 0.06),
              Container(
                height: height * 0.7,
                width: width,
                child: Image(
                  image: AssetImage("images/house.png"),
                ),
              ),
              SizedBox(height: 100.0)
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height * 0.45,
              width: width,
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                  color: kBackgroundColor1,
                  boxShadow: [
                    BoxShadow(
                        color: kShadowColor,
                        offset: Offset(0, 6),
                        blurRadius: 6.0)
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.0),
                  Text("Set New Password", style: kAuthTitleTextStyle),
                  SizedBox(height: 10.0),
                  Text(
                    "Enter the new password you would to\nuse and try login",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: kTextColor1,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(height: 20.0),
                  KTextField(hintText: "Password...", obscure: true),
                  SizedBox(height: 20.0),
                  KTextField(hintText: "Confirm Password...", obscure: true),
                  SizedBox(height: 25.0),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: height * 0.40,
            right: 50.0,
            child: FloatingActionButton(
              onPressed: () => Get.to(OTPVerifyPage()),
              child: Icon(FeatherIcons.arrowRight),
            ),
          ),
        ],
      ),
    );
  }
}
