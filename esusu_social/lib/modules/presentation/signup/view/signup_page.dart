import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/login/view/login_page.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  final double height = Get.height;
  final double width = Get.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Stack(
        children: [
          Container(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: height * 0.40,
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
              height: height * 0.80,
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
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  SizedBox(height: 20.0),
                  Text("Sign Up", style: kAuthTitleTextStyle),
                  SizedBox(height: 15.0),
                  KTextField(
                      isBgColor: isDarkModeON, hintText: "First Name..."),
                  SizedBox(height: 20.0),
                  KTextField(isBgColor: isDarkModeON, hintText: "Last Name..."),
                  SizedBox(height: 20.0),
                  KTextField(
                      isBgColor: isDarkModeON, hintText: "Phone Number..."),
                  SizedBox(height: 20.0),
                  KTextField(isBgColor: isDarkModeON, hintText: "Email..."),
                  SizedBox(height: 20.0),
                  KTextField(isBgColor: isDarkModeON, hintText: "Password..."),
                  SizedBox(height: 20.0),
                  KTextField(
                      isBgColor: isDarkModeON, hintText: "Confirm Password..."),
                  SizedBox(height: 20.0),
                  KTextField(
                      isBgColor: isDarkModeON, hintText: "Referrer Code..."),
                  SizedBox(height: 15.0),
                  GestureDetector(
                    onTap: () => Get.off(LoginPage()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Already have an account?",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  color: kPrimaryColor)),
                        ),
                        Text(
                          "Log In",
                          style: kAuthTitleTextStyle.copyWith(fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.0),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: height * 0.75,
            right: 50.0,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(FeatherIcons.arrowRight),
            ),
          ),
        ],
      ),
    );
  }
}
