import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kButton.dart';
import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pin_put/pin_put.dart';

class DataPage extends StatelessWidget {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      // border: Border.all(color: kPrimaryColor),
      borderRadius: BorderRadius.circular(15.0),
      color: Colors.grey[400],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              KAppBar(text: "Data"),
              SizedBox(height: 20.0),
              ListView(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  Text(
                    "MOBILE NUMBER",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor)),
                  ),
                  _buildMobileNumberPanel(),
                  SizedBox(height: 20.0),
                  Text(
                    "Select Network Provider".toUpperCase(),
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor)),
                  ),
                  _buildPinPanel(),
                  SizedBox(height: 20.0),
                  Text(
                    "Select an option".toUpperCase(),
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor)),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                          _buildBottomSheet(),
                          barrierColor: Colors.transparent,
                        );
                      },
                      child: Container(
                        color: Colors.white.withOpacity(0),
                        child: KTextField(
                          hintText: "1 GB, 400 Minutes @ 900",
                          readOnly: true,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            KButton(text: 'Next', onPressed: () {}),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildPinPanel() {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      child: PinPut(
        keyboardType: TextInputType.text,
        fieldsCount: 4,
        eachFieldConstraints: BoxConstraints(minHeight: 45.0, minWidth: 45.0),
        onSubmit: (String pin) {},
        submittedFieldDecoration: _pinPutDecoration.copyWith(
          borderRadius: BorderRadius.circular(20.0),
        ),
        selectedFieldDecoration: _pinPutDecoration,
        followingFieldDecoration: _pinPutDecoration.copyWith(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.grey[400],
          border: Border.all(
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }

  Widget _buildMobileNumberPanel() {
    return Row(
      children: [
        Expanded(
          child: KTextField(
            prefix: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Text(
                "+234",
                textAlign: TextAlign.end,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: kTextColor1,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            hintText: "Mobile Number",
          ),
        ),
        SizedBox(width: 15.0),
        Container(
          height: 40.0,
          width: 40.0,
          padding: EdgeInsets.all(7.0),
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(6.0)),
          child: Image(
            image: AssetImage("images/contacts.png"),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomSheet() {
    return Container(
      height: Get.height * 0.55,
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      decoration: BoxDecoration(
        color: kTextColor3,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0)),
        boxShadow: [
          BoxShadow(
              color: kShadowColor.withOpacity(0.6),
              offset: Offset(0, 0),
              blurRadius: 10.0)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.0),
          Text(
            "Select an option".toUpperCase(),
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor)),
          ),
          SizedBox(height: 10.0),
          KTextField(
              hintText: "Search...",
              suffix: Icon(
                FeatherIcons.search,
                color: kPrimaryColor,
              )),
          SizedBox(height: 30.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("1 GB, 400 Minutes @ 900",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: kTextColor1.withOpacity(0.5),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500))),
              SizedBox(height: 15.0),
              Text("1 GB, 400 Minutes @ 900",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: kTextColor1.withOpacity(0.5),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500))),
              SizedBox(height: 15.0),
              Text("1 GB, 400 Minutes @ 900",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: kTextColor1.withOpacity(0.5),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500))),
            ],
          ),
        ],
      ),
    );
  }
}
