import 'package:check_stack/presentation/screens/forgot_password/view/new_password_page.dart';
import 'package:check_stack/presentation/screens/signup/view/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utility/colors.dart';

class CheckEmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollBehavior()
          ..buildViewportChrome(context, null, AxisDirection.down),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 120.0,
                        child:
                            Image(image: AssetImage("images/checkstack.png"))),
                    TextButton(
                      onPressed: () => Get.offAll(SignupPage()),
                      child: Icon(
                        FeatherIcons.x,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 110.0),
                Container(
                  height: 100.0,
                  width: double.infinity,
                  child: Icon(
                    Icons.mail_outline,
                    size: 100.0,
                  ),
                ),
                SizedBox(height: 35.0),
                Text(
                  "Check your email",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "We've sent you instructions on how to reset\nthe password(also check the Spam folder)",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 13.0,
                      color: kTextColor2,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 60.0),
                ConstrainedBox(
                  constraints:
                      BoxConstraints.tightFor(width: 180.0, height: 40.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onPressed: () => Get.to(NewPasswordPage()),
                    child: Text(
                      "Go to email",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
