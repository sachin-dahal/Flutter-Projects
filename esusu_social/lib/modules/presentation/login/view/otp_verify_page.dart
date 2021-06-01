import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OTPVerifyPage extends StatelessWidget {
  final double height = Get.height;
  final double width = Get.width;

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: kPrimaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

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
                  Text("Enter OTP", style: kAuthTitleTextStyle),
                  SizedBox(height: 10.0),
                  Text(
                    "Enter the pin code you received by text msg",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: isDarkModeON ? kTextColor3 : kTextColor1,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(height: 20.0),
                  _buildOTPPanel(),
                  SizedBox(height: 25.0),
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

  Widget _buildOTPPanel() {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      child: PinPut(
        keyboardType: TextInputType.text,
        fieldsCount: 5,
        eachFieldConstraints: BoxConstraints(minHeight: 50.0, minWidth: 35.0),
        onSubmit: (String pin) {},
        submittedFieldDecoration: _pinPutDecoration.copyWith(
          borderRadius: BorderRadius.circular(20.0),
        ),
        selectedFieldDecoration: _pinPutDecoration,
        followingFieldDecoration: _pinPutDecoration.copyWith(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
