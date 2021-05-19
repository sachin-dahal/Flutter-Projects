import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/signup/view/signup_page.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
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
                width: width,
                child: Image(
                  image: AssetImage("images/esusu_social.png"),
                  height: 55.0,
                ),
              ),
              Container(
                height: height * 0.46,
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
                  SizedBox(height: 30.0),
                  Text("Login", style: kAuthTitleTextStyle),
                  SizedBox(height: 30.0),
                  KTextField(hintText: "Email..."),
                  SizedBox(height: 25.0),
                  KTextField(hintText: "Password..."),
                  SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Forgot Password?",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  color: kPrimaryColor)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.to(SignUpPage()),
                        child: Text(
                          "Sign Up",
                          style: kAuthTitleTextStyle.copyWith(fontSize: 18.0),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: height * 0.40,
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
