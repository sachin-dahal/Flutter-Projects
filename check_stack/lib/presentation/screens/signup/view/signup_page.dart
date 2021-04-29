import 'package:check_stack/common/kBottomBarButton.dart';
import 'package:check_stack/common/kTextfield.dart';
import 'package:check_stack/presentation/screens/homepage/view/cheque_homepage.dart';
import 'package:check_stack/presentation/screens/signin/view/signin_page.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:check_stack/utility/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor1,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 150.0,
                      child: Image(image: AssetImage("images/checkstack.png"))),
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
              SizedBox(height: 60),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's create your\napp account",
                      style: kTitleTextStyle1,
                    ),
                    SizedBox(height: 20),
                    KTextField(hintText: "Enter your full name"),
                    SizedBox(height: 10),
                    IntlPhoneField(
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 14.0)),
                      dropDownArrowColor: Colors.grey[500],
                      decoration: InputDecoration(
                        hintText: "Enter Phone Number",
                        hintStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(fontSize: 13.0)),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 10.0,
                        ),
                        isDense: true,
                      ),
                      initialCountryCode: 'US',
                    ),
                    SizedBox(height: 10),
                    KTextField(hintText: "Enter email address"),
                    SizedBox(height: 10),
                    KTextField(
                      hintText: "Enter password",
                      obscure: _obscure,
                      suffixIcon: IconButton(
                        onPressed: _toggle,
                        icon: _obscure
                            ? Icon(FeatherIcons.eyeOff,
                                color: kTextColor2, size: 18)
                            : Icon(FeatherIcons.eye,
                                color: kTextColor2, size: 18),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.12,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "By signing up you accept the ",
                        style: GoogleFonts.poppins(
                            textStyle:
                                TextStyle(color: kTextColor2, fontSize: 11.0)),
                        children: [
                          TextSpan(
                            text: "Terms & Conditions ",
                            style: TextStyle(
                                color: kTextColor1,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline),
                          ),
                          TextSpan(text: "and "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                                color: kTextColor1,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline),
                          ),
                        ],
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
        text: "Sign Up",
        onPressed: () => Get.to(ChequePage()),
      ),
    );
  }

  void _toggle() {
    setState(() {
      _obscure = !_obscure;
    });
  }
}
