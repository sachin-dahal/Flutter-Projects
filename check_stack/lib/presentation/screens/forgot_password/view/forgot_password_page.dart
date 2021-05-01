import 'package:check_stack/common/kBottomBarButton.dart';
import 'package:check_stack/common/kTextfield.dart';
import 'package:check_stack/presentation/screens/forgot_password/view/check_email_page.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordPage extends StatelessWidget {
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
                    width: 120.0,
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
                      "Forgot password",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Enter your email and we'll send you\ninstructions on how to reset your password.",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12.0,
                          color: kTextColor2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    KTextField(hintText: "Enter email address"),
                    SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: KBottomBarButton(
        text: "Recover password",
        onPressed: () => Get.to(CheckEmailPage()),
      ),
    );
  }
}
