import 'package:check_stack/common/kBottomBarButton.dart';
import 'package:check_stack/presentation/screens/homepage/view/amount_page.dart';
import 'package:check_stack/presentation/screens/homepage/widgets/bank_card_widget.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:check_stack/utility/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utility/colors.dart';
import '../../../common_widgets/drawer_widget.dart';

class AccountPage extends StatelessWidget {
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
            children: [
              _buildTopNavPanel(),
              SizedBox(height: 10.0),
              Text("FUNDS REMAINING",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 12.0))),
              Text("\$117.15", style: kTitleTextStyle2),
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
                    SizedBox(height: 8.0),
                    Text("My Money - Funds Available in Minutes",
                        style: GoogleFonts.poppins(
                            textStyle:
                                TextStyle(fontSize: 12.0, color: kTextColor2))),
                    SizedBox(height: 20.0),
                    BankCard(
                      title: "My Debit Card",
                      cardImgUrl: "images/visa.png",
                      imgUrl: "images/tick_done.png",
                    ),
                    SizedBox(height: 20.0),
                    BankCard(
                      title: "My Prepaid Card",
                      cardImgUrl: "images/master-card.png",
                    ),
                    SizedBox(height: 20.0),
                    BankCard(
                      title: "PayPal Shopping",
                      cardImgUrl: "images/paypal.png",
                    ),
                    SizedBox(height: 20.0),
                    BankCard(
                      title: "Amazon.com Gift Card",
                      cardImgUrl: "images/amazon.png",
                    ),
                    SizedBox(height: 15.0),
                    Text("My Bills - Most credit cards post next business day",
                        style: GoogleFonts.poppins(
                            textStyle:
                                TextStyle(fontSize: 13.0, color: kTextColor2))),
                    SizedBox(height: 20.0),
                    BankCard(
                      title: "My Amex",
                      cardImgUrl: "images/amex.png",
                    ),
                    SizedBox(height: 20.0),
                    BankCard(
                      title: "Old Navy",
                      cardImgUrl: "images/old-navy.png",
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Material(
        borderRadius: BorderRadius.circular(12.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(12.0),
          onTap: () {},
          child: Ink(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Icon(
              FeatherIcons.plus,
              color: kBgColor1,
            ),
          ),
        ),
      ),
      bottomNavigationBar: KBottomBarButton(
        text: "Next",
        onPressed: () => Get.to(AmountPage()),
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
            'ACCOUNT',
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
