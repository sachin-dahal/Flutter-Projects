import 'package:check_stack/common/kBottomBarButton.dart';
import 'package:check_stack/presentation/screens/signin/view/signin_page.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:check_stack/utility/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../signup/view/signup_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor1,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 120.0,
                        child:
                            Image(image: AssetImage("images/checkstack.png"))),
                    TextButton(
                        onPressed: () => Get.to(SigninPage()),
                        child: Text(
                          "Sign in",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15.0,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline),
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Image(
                  image: AssetImage("images/splash-image.png"),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LET'S\nGET STARTED!",
                      style: kTitleTextStyle1,
                    ),
                    SizedBox(height: 6),
                    Text("Join us now ans enjoy your best time here!",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: kTextColor2,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w600))),
                    SizedBox(height: 10),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: KBottomBarButton(
        text: "Create New account",
        onPressed: () => Get.to(SignupPage()),
      ),
    );
  }
}
