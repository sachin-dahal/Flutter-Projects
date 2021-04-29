import 'package:check_stack/common/kBottomBarButton.dart';
import 'package:check_stack/presentation/screens/homepage/view/account_page.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:check_stack/utility/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common_widgets/drawer_widget.dart';

class TimingPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      endDrawer: MainDrawer(),
      body: Column(
        children: [
          _buildTopNavPanel(),
          SizedBox(height: 10.0),
          Text("FUNDS",
              style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12.0))),
          Text("\$122.15", style: kTitleTextStyle2),
          SizedBox(height: 20.0),
          Container(
            color: kBgColor1,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Choose when you want your money",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w600))),
                SizedBox(height: 20.0),
                Container(
                  color: kBgColor2,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage('images/money_transfer.png'),
                                height: 10.0,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                "Money In Minutes",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.0),
                          Text("CHECK FEE",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(fontSize: 10.0))),
                          Text("\$5.00",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 12.0,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w700,
                              ))),
                        ],
                      ),
                      Image(image: AssetImage("images/tick_done.png"))
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  color: kBgColor2,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage('images/money_transfer.png'),
                                height: 10.0,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                "Money in 10 Days",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.0),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("CHECK FEE",
                                      style: GoogleFonts.poppins(
                                          textStyle:
                                              TextStyle(fontSize: 10.0))),
                                  Text("Free",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        fontSize: 12.0,
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.w700,
                                      ))),
                                ],
                              ),
                              SizedBox(width: 30.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("AVAILABLE",
                                      style: GoogleFonts.poppins(
                                          textStyle:
                                              TextStyle(fontSize: 10.0))),
                                  Text("2 Nov, 21",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        fontSize: 12.0,
                                        color: kTextColor1,
                                        fontWeight: FontWeight.w700,
                                      ))),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image(image: AssetImage("images/tick_notdone.png"))
                    ],
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                    "Send money to one or more participating bank, prepaid, credit card or PayPal accounts, or buy Amazon.com Gift Card.",
                    style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(fontSize: 13.0, color: kTextColor2))),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: KBottomBarButton(
        text: "Next",
        onPressed: () => Get.to(AccountPage()),
        // onPressed: () => Get.to(TimingPage()),
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
          IconButton(
            icon: Icon(FeatherIcons.arrowLeft),
            onPressed: () => Get.back(),
          ),
          Text(
            'TIMING',
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
