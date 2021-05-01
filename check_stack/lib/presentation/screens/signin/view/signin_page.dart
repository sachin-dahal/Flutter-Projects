import 'package:check_stack/common/kBottomBarButton.dart';
import 'package:check_stack/common/kTextfield.dart';
import 'package:check_stack/presentation/screens/forgot_password/view/forgot_password_page.dart';
import 'package:check_stack/presentation/screens/signup/view/signup_page.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/signin_controller.dart';

class SigninPage extends StatelessWidget {
  final SignInController _signInController = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor1,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 120.0,
                      child: Image(image: AssetImage("images/checkstack.png"))),
                  TextButton(
                    onPressed: () => Get.to(SignupPage()),
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 15.0,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back!\nYou've been missed",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    KTextField(hintText: "Enter email address"),
                    SizedBox(height: 10),
                    GetBuilder<SignInController>(builder: (_signInController) {
                      return KTextField(
                        hintText: "Enter password",
                        obscure: _signInController.isObscure,
                        suffixIcon: IconButton(
                          onPressed: _signInController.toggle,
                          iconSize: 16.0,
                          icon: _signInController.isObscure
                              ? Icon(FeatherIcons.eyeOff, color: kTextColor2)
                              : Icon(FeatherIcons.eye, color: kTextColor2),
                        ),
                      );
                    }),
                    SizedBox(height: Get.height * 0.22),
                    Center(
                      child: TextButton(
                        onPressed: () => Get.to(ForgotPasswordPage()),
                        child: Text(
                          "Forgot Password",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: kTextColor1,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: KBottomBarButton(
        text: "Sign In",
        onPressed: () {},
      ),
    );
  }
}
