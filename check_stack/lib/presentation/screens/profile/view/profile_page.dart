import 'package:check_stack/common/kWhiteTextfield.dart';
import 'package:check_stack/presentation/data/profile/card_data.dart';
import 'package:check_stack/presentation/screens/profile/controller/profile_controller.dart';
import 'package:check_stack/presentation/screens/profile/widgets/container_tf_widget.dart';
import 'package:check_stack/presentation/screens/profile/widgets/profile_card_widget.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:check_stack/utility/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utility/colors.dart';
import '../../../../utility/colors.dart';
import '../../../common_widgets/drawer_widget.dart';

class ProfilePage extends StatelessWidget {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopNavPanel(),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("General",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 14.0))),
              ),
              SizedBox(height: 10.0),
              _buildNameFieldPanel(),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("My Payment Methods",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 14.0))),
              ),
              SizedBox(height: 10.0),
              Container(
                color: kBgColor1,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Get.bottomSheet(
                        //   _buildChangePasswordSheet(),
                        // );
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return _buildAddPaymentSheet();
                          },
                          isScrollControlled: true,
                        );
                      },
                      child: _buildaddPaymentButton(),
                    ),
                    SizedBox(height: 10.0),
                    ProfilecardWidget(
                      imgUrl: "images/visa.png",
                      title: "My Debit card",
                      cardNum: "4213 12** **** ****",
                      amount: "1,290.90",
                    ),
                    SizedBox(height: 10.0),
                    ProfilecardWidget(
                      imgUrl: "images/master-card.png",
                      title: "My Prepaid Card",
                      cardNum: "4213 12** **** ****",
                      amount: "1,290.90",
                    ),
                    SizedBox(height: 10.0),
                    ProfilecardWidget(
                      imgUrl: "images/paypal.png",
                      title: "PayPal Shopping",
                      cardNum: "4213 12** **** ****",
                      amount: "1,290.90",
                    ),
                    SizedBox(height: 10.0),
                    ProfilecardWidget(
                      imgUrl: "images/amazon.png",
                      title: "Amazon.com Gift Card",
                      cardNum: "4213 12** **** ****",
                      amount: "1,290.90",
                    ),
                    SizedBox(height: 10.0),
                    ProfilecardWidget(
                      imgUrl: "images/amex.png",
                      title: "My Amex",
                      cardNum: "4213 12** **** ****",
                      amount: "1,290.90",
                    ),
                    SizedBox(height: 10.0),
                    ProfilecardWidget(
                      imgUrl: "images/old-navy.png",
                      title: "Old Navy",
                      cardNum: "4213 12** **** ****",
                      amount: "1,290.90",
                    ),
                    SizedBox(height: 15.0),
                    SizedBox(height: 10.0),
                  ],
                ),
              )
            ],
          ),
        ),
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

  Container _buildaddPaymentButton() {
    return Container(
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: kPrimaryColor.withOpacity(0.15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Add Payment Method",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              color: kPrimaryColor,
              fontSize: 13.0,
              letterSpacing: 0.6,
              fontWeight: FontWeight.w700,
            )),
          ),
          Icon(FeatherIcons.plus)
        ],
      ),
    );
  }

  Widget _buildNameFieldPanel() {
    return Container(
        color: kBgColor1,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: GetBuilder<ProfilePageController>(
          builder: (_profilePageController) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildImageProfilePanle(),
                SizedBox(height: 10.0),
                Text("FULL NAME",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 12.0))),
                SizedBox(height: 5.0),
                ContainerTF(
                  readOnly: _profilePageController.readOnly,
                  controller: _profilePageController.fullnameController,
                ),
                SizedBox(height: 10.0),
                Text("PHONE NUMBER",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 12.0))),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: kBgColor2,
                          border: Border(
                              bottom: BorderSide(
                            color: Colors.black54,
                          ))),
                      child: Row(
                        children: [
                          SizedBox(width: 6.0),
                          Icon(
                            FeatherIcons.chevronDown,
                            color: Colors.grey[500],
                            size: 18.0,
                          ),
                          SizedBox(width: 3.0),
                          Container(
                            height: 15.0,
                            child: Image(
                              image: AssetImage("images/us.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 3.0),
                          Text(
                            "+1",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Flexible(
                      child: ContainerTF(
                        readOnly: _profilePageController.readOnly,
                        controller: _profilePageController.phoneController,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Text("EMAIL",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 12.0))),
                SizedBox(height: 5.0),
                ContainerTF(
                  readOnly: _profilePageController.readOnly,
                  controller: _profilePageController.emailController,
                ),
              ],
            );
          },
        ));
  }

  Widget _buildImageProfilePanle() {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Container(width: 100.0),
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(80.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, -2),
                      blurRadius: 5.0,
                    )
                  ]),
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage("images/person1.png"),
              ),
            ),
            Positioned(
              right: 18,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(80.0),
                    boxShadow: [
                      BoxShadow(
                        color: kPrimaryColor.withOpacity(0.4),
                        offset: Offset(0, 1),
                        blurRadius: 5.0,
                      )
                    ]),
                child: Icon(
                  Icons.edit,
                  size: 16.0,
                  color: kTextColor1,
                ),
              ),
            )
          ],
        ),
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
            'PROFILE',
            style: kBarTextStyle,
          ),
          TextButton(
            onPressed: () => _profilePageController.setWrite(),
            child: Container(
              height: 20,
              child: Text(
                "Edit",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.6)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
