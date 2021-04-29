import 'package:check_stack/common/kBottomBarButton.dart';
import 'package:check_stack/common/kTextfield.dart';
import 'package:check_stack/presentation/screens/signup/view/signup_page.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor1,
      body: Container(
        padding: EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 150.0,
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
                            decoration: TextDecoration.underline),
                      ),
                    )),
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
                    height: Get.height * 0.26,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {},
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
      bottomNavigationBar: KBottomBarButton(
        text: "Sign In",
        onPressed: () {},
      ),
    );
  }

  void _toggle() {
    setState(() {
      _obscure = !_obscure;
    });
  }
}
