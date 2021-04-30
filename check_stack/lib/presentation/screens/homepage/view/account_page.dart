import 'package:check_stack/common/kBottomBarButton.dart';
import 'package:check_stack/common/kWhiteTextfield.dart';
import 'package:check_stack/presentation/data/profile/card_data.dart';
import 'package:check_stack/presentation/screens/homepage/view/amount_page.dart';
import 'package:check_stack/presentation/screens/homepage/widgets/bank_card_widget.dart';
import 'package:check_stack/presentation/screens/profile/controller/profile_controller.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:check_stack/utility/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utility/colors.dart';
import '../../../common_widgets/drawer_widget.dart';

class AccountPage extends StatelessWidget {
  final ProfilePageController _profilePageController =
      Get.put(ProfilePageController());

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: MainDrawer(),
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
          onTap: () {
            showModalBottomSheet(
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) {
                return _buildAddPaymentSheet();
              },
              isScrollControlled: true,
            );
          },
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

  Widget _buildAddPaymentSheet() {
    return Container(
      color: Colors.grey[300],
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(10.0),
        children: [
          Container(
            color: Colors.grey[300],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: GetBuilder<ProfilePageController>(
                    builder: (_profilePageController) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50.0,
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () =>
                                        _profilePageController.firstTrue(),
                                    child: Container(
                                      height: 40.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      decoration: BoxDecoration(
                                        color: _profilePageController.first
                                            ? Colors.white
                                            : Colors.transparent,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "My Money",
                                          style: _profilePageController.first
                                              ? GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: kTextColor1),
                                                )
                                              : GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: kTextColor1),
                                                ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () =>
                                        _profilePageController.secondTrue(),
                                    child: Container(
                                      height: 40.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      decoration: BoxDecoration(
                                          color: _profilePageController.second
                                              ? Colors.white
                                              : Colors.transparent),
                                      child: Center(
                                        child: Text(
                                          "My Bills",
                                          style: _profilePageController.second
                                              ? GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: kTextColor1),
                                                )
                                              : GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: kTextColor1,
                                                  ),
                                                ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 12.0),
                          GetBuilder<ProfilePageController>(
                              builder: (_profilePageController) {
                            return Container(
                              width: double.infinity,
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                underline: Container(
                                  height: 1.0,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.transparent,
                                        width: 0.0,
                                      ),
                                    ),
                                  ),
                                ),
                                dropdownColor: Colors.white,
                                focusColor: Colors.white,
                                value: _profilePageController.selectedCard,
                                style: TextStyle(color: Colors.white),
                                iconEnabledColor: Colors.black,
                                items: dropdownItems
                                    .map<DropdownMenuItem<String>>(
                                        (Item value) {
                                  return DropdownMenuItem<String>(
                                    value: value.name,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 15.0,
                                          child: Image(
                                            image: AssetImage(value.imgUrl),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          value.name,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                onChanged: _profilePageController.onChanged,
                              ),
                            );
                          }),
                          SizedBox(height: 12.0),
                          _profilePageController.selectedCard == "Card"
                              ? KWhiteTextField(
                                  hintText: "Card type (Debit ot Prepaid)")
                              : Container(),
                          _profilePageController.selectedCard == "Card"
                              ? SizedBox(height: 12.0)
                              : Container(),
                          _profilePageController.selectedCard == "Card"
                              ? KWhiteTextField(hintText: "Card Number")
                              : KWhiteTextField(hintText: "Email"),
                          SizedBox(height: 12.0),
                          _profilePageController.selectedCard == "Card"
                              ? KWhiteTextField(hintText: "Exp. Date (MM/YY)")
                              : KWhiteTextField(hintText: "Password"),
                          SizedBox(height: 12.0),
                          _profilePageController.selectedCard == "Card"
                              ? KWhiteTextField(hintText: "CVV")
                              : Container(),
                          SizedBox(height: 12.0),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  color: kPrimaryColor,
                  height: 1,
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 20.0),
                      Expanded(
                        child: Center(
                          child: TextButton(
                            onPressed: () => Get.back(),
                            child: Text(
                              "Cancel",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: kTextColor1,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(child: VerticalDivider(color: kPrimaryColor)),
                      Expanded(
                        child: Center(
                          child: TextButton(
                            onPressed: () => Get.back(),
                            child: Text(
                              "Save",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: kTextColor1,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                    ],
                  ),
                )
              ],
            ),
          ),
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
          IconButton(
            icon: Icon(FeatherIcons.arrowLeft),
            onPressed: () => Get.back(),
          ),
          Text(
            'ACCOUNT',
            style: kBarTextStyle,
          ),
          TextButton(
            onPressed: () => _key.currentState.openDrawer(),
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
