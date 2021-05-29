import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/bill_payment/view/bill_payment.dart';
import 'package:esusu_social/modules/presentation/homepage/widgets/label_card_widget.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  final height = Get.height;
  final width = Get.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(height: 280.0),
                  _buildAppBarPanel(),
                  Positioned(
                    top: height * 0.15,
                    left: 20.0,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: width * 0.88,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Good Evening, Darrell",
                                    style: kAuthTitleTextStyle.copyWith(
                                        fontSize: 18.0, color: kTextColor3)),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 55.0,
                                      width: 55.0,
                                    ),
                                    Container(
                                      height: 45.0,
                                      width: 45.0,
                                      child: Image(
                                        image: AssetImage("images/user.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      left: 1,
                                      bottom: 2,
                                      child: CircleAvatar(
                                        radius: 7,
                                        backgroundColor: kTextColor3,
                                        child: Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: CircleAvatar(
                                            radius: 5,
                                            backgroundColor: kPrimaryColor,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            height: height * 0.18,
                            width: width * 0.88,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            decoration: BoxDecoration(
                              color: kTextColor3,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                    color: kShadowColor.withOpacity(0.3),
                                    offset: Offset(0, 0),
                                    blurRadius: 3.0)
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("My Wallet",
                                    style: kAuthTitleTextStyle.copyWith(
                                        fontSize: 18.0)),
                                Center(
                                  child: Text("\$7,425",
                                      style: kLinkLabelStyle.copyWith(
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.w800,
                                          letterSpacing: 1.5)),
                                ),
                                SizedBox(height: 5.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Fund Wallet",
                                      style: kLinkLabelStyle.copyWith(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.red),
                                    ),
                                    Text(
                                      "Available Balance",
                                      style: kLinkLabelStyle.copyWith(
                                          fontSize: 11.0,
                                          color: kTextColor1,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Withdraw Funds",
                                      style: kLinkLabelStyle.copyWith(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.red),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      height: 11.0,
                      width: 11.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: kPrimaryColor,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      height: 11.0,
                      width: 11.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Quick Links",
                      style: kAuthTitleTextStyle.copyWith(fontSize: 16.0)),
                  SizedBox(height: 10.0),
                  Container(
                    width: width * 0.95,
                    child: Wrap(
                      spacing: 10.0,
                      runSpacing: 12.0,
                      children: [
                        LabelCardWidget(
                          imgUrl: "images/loan.png",
                          text: "Loans",
                          color: Colors.green[400],
                          onPressed: () {},
                        ),
                        LabelCardWidget(
                          imgUrl: "images/pay_bills.png",
                          text: "Pay Bills",
                          color: Colors.red[400],
                          onPressed: () => Get.to(BillPaymentPage()),
                        ),
                        LabelCardWidget(
                          imgUrl: "images/deals.png",
                          text: "Deals",
                          color: Color(0xFFFBBB00),
                          onPressed: () {},
                        ),
                        LabelCardWidget(
                          imgUrl: "images/esusu_central.png",
                          text: "eSuSuCentral",
                          color: Color(0xFF518EF8),
                          onPressed: () {},
                        ),
                        LabelCardWidget(
                          imgUrl: "images/buyNowPayLater.png",
                          text: "BuyNowPayLater",
                          fontSize: 11.0,
                          color: Color(0xFFC536A4),
                          onPressed: () {},
                        ),
                        LabelCardWidget(
                          imgUrl: "images/social.png",
                          text: "Social",
                          color: Color(0xFFD75F1B),
                          onPressed: () {},
                        ),
                        LabelCardWidget(
                          imgUrl: "images/forum.png",
                          text: "Forum Q&A",
                          color: Color(0xFF7E36C5),
                          onPressed: () {},
                        ),
                        LabelCardWidget(
                          imgUrl: "images/clubs.png",
                          text: "Clubs",
                          color: Color(0xFF13AD8D),
                          onPressed: () {},
                        ),
                        LabelCardWidget(
                          imgUrl: "images/directory.png",
                          text: "Directory",
                          color: Color(0xFF51D0F8),
                          onPressed: () {},
                        ),
                        SizedBox(height: 50.0),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBarPanel() {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      height: height * 0.3,
      width: width,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 18.0,
            child: Image(
              image: AssetImage("images/menu.png"),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Dashboard",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: kTextColor3,
                  fontSize: 17.0),
            ),
          ),
          Icon(
            FontAwesomeIcons.solidBell,
            color: kTextColor3,
            size: 22.0,
          )
        ],
      ),
    );
  }
}
