import 'package:check_stack/presentation/screens/homepage/controller/homepage_controller.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:check_stack/utility/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utility/colors.dart';
import '../../../common_widgets/drawer_widget.dart';

class HistoryDetailsPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      endDrawer: MainDrawer(),
      body: ScrollConfiguration(
        behavior: ScrollBehavior()
          ..buildViewportChrome(context, null, AxisDirection.down),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopNavPanel(),
              SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                height: 150.0,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      color: kTeritaryColor,
                      height: 140.0,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 15.0),
                        child: Image(
                          image: AssetImage("images/cheque_front.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //-----------------------------
              SizedBox(height: 15.0),
              _buildCheckAmountPanel(),
              SizedBox(height: 20.0),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text("Transactions",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ))),
              Divider(color: kTextColor2),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "My Debit Card",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 13.0, fontWeight: FontWeight.w700)),
                        ),
                        Text(
                          "\$100.15",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 13.0, fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "4123 12** **** ****",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 11.0, color: kTextColor2)),
                        ),
                        Container(
                          height: 12.0,
                          child: Image(
                            image: AssetImage("images/visa.png"),
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(color: kTextColor2),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "My Amex Card",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 13.0, fontWeight: FontWeight.w700)),
                        ),
                        Text(
                          "\$17.00",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 13.0, fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "3123 12** **** ****",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 11.0, color: kTextColor2)),
                        ),
                        Container(
                          height: 24.0,
                          child: Image(
                            image: AssetImage("images/amex.png"),
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          GetBuilder<HomepageController>(builder: (_homepageController) {
        return GestureDetector(
          onTap: () => Get.back(),
          child: Container(
            height: 70.0,
            color: kPrimaryColor,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "< Back",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 15.0,
                      color: kBgColor1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Container _buildCheckAmountPanel() {
    return Container(
      color: kBgColor1,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Check Amount",
                style:
                    GoogleFonts.poppins(textStyle: TextStyle(fontSize: 13.0)),
              ),
              Text(
                "\$122.15",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 13.0, fontWeight: FontWeight.w700)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Fees",
                style:
                    GoogleFonts.poppins(textStyle: TextStyle(fontSize: 13.0)),
              ),
              Text(
                "-\$5.00",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w700,
                  color: kPrimaryColor,
                )),
              ),
            ],
          ),
          Divider(color: kTextColor2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(""),
              Text(
                "\$117.15",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 13.0, fontWeight: FontWeight.w700)),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTopNavPanel() {
    return Container(
      height: 100.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      alignment: Alignment.bottomCenter,
      color: kBgColor1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '08:32 PM - 20 NOV, 2021',
            style: kBarTextStyle,
          ),
          TextButton(
            onPressed: () => _key.currentState.openEndDrawer(),
            child: Container(
              height: 20,
              child: Image(
                image: AssetImage("images/menu.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
