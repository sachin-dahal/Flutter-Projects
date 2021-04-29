import 'package:check_stack/common/kBottomBarButton.dart';
import 'package:check_stack/common/kTextfield.dart';
import 'package:check_stack/presentation/screens/forgot_password/view/check_email_page.dart';
import 'package:check_stack/presentation/screens/signin/controller/signin_controller.dart';
import 'package:check_stack/presentation/screens/signup/view/signup_page.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPasswordPage extends StatelessWidget {
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => Get.back(),
                  ),
                  SizedBox(width: 50.0),
                  Container(
                    width: 150.0,
                    child: Image(
                      image: AssetImage("images/checkstack.png"),
                    ),
                  ),
                  SizedBox(width: 10.0),
                ],
              ),
              SizedBox(height: 80),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New password",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Lets change your old password and set you\nup with a brand new one.",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12.0,
                          color: kTextColor2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    GetBuilder<SignInController>(builder: (_signInController) {
                      return KTextField(
                        hintText: "Enter new password",
                        obscure: _signInController.isObscure,
                        suffixIcon: IconButton(
                          onPressed: _signInController.toggle,
                          icon: _signInController.isObscure
                              ? Icon(FeatherIcons.eyeOff,
                                  color: kTextColor2, size: 18)
                              : Icon(FeatherIcons.eye,
                                  color: kTextColor2, size: 18),
                        ),
                      );
                    }),
                    SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: KBottomBarButton(
        text: "Update password",
        onPressed: () => Get.to(SignupPage()),
      ),
    );
  }
}
