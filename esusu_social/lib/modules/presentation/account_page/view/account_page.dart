import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/account_page/widgets/acc_button_widget.dart';
import 'package:esusu_social/modules/presentation/bank_details/view/bank_details.dart';
import 'package:esusu_social/modules/presentation/bottom_bar/controller/bottom_bar_controller.dart';
import 'package:esusu_social/modules/presentation/bottom_bar/view/bottom_bar_page.dart';
import 'package:esusu_social/modules/presentation/bvn_verification/view/bvn_verification_page.dart';
import 'package:esusu_social/modules/presentation/homepage/controller/homepage_controller.dart';
import 'package:esusu_social/modules/presentation/invite_friends/view/invite_friends_page.dart';
import 'package:esusu_social/modules/presentation/notifications/view/notifications_page.dart';
import 'package:esusu_social/modules/presentation/personal_details/view/personal_details.dart';
import 'package:esusu_social/modules/presentation/privacy_and_security/view/privacy_and_security.dart';
import 'package:esusu_social/modules/presentation/terms_and_conditions/view/terms_and_conditions.dart';
import 'package:esusu_social/modules/presentation/upgrade_account/view/upgrade_account_page.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final height = Get.height;

  final width = Get.width;
  final BottombarController _bottombarController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: Column(
          children: [
            KAppBar(text: "Accounts"),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                children: [
                  SizedBox(height: 15.0),
                  _buildUserPanel(),
                  SizedBox(height: 20.0),
                  AccButton(
                    text: "Personal Details",
                    onPressed: () => Get.to(PersonalDetailsPage()),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20.0),
                    height: 50.0,
                    width: width - 40.0,
                    padding: EdgeInsets.only(left: 20.0, right: 10.0),
                    decoration: BoxDecoration(
                      color: isDarkModeON ? kPrimaryColor : kTextColor3,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                            color: kShadowColor.withOpacity(0.2),
                            offset: Offset(0, 0),
                            blurRadius: 3.0),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dark Mode",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: isDarkModeON ? kTextColor3 : kTextColor1,
                                fontSize: 16.0),
                          ),
                        ),
                        Switch(
                            value: isDarkModeON,
                            activeColor: Colors.lightBlue,
                            activeTrackColor: kTextColor1.withOpacity(0.5),
                            onChanged: (val) {
                              setState(() {
                                isDarkModeON = val;
                                _bottombarController.update();
                              });
                            })
                      ],
                    ),
                  ),
                  AccButton(
                    text: "Upgrade Account",
                    onPressed: () => Get.to(UpgradeAccountPage()),
                  ),
                  AccButton(
                    text: "Bank Details",
                    onPressed: () => Get.to(BankDetailsPage()),
                  ),
                  AccButton(
                    text: "Notifications",
                    onPressed: () => Get.to(NotificationsPage()),
                  ),
                  AccButton(
                    text: "Privacy & Security",
                    onPressed: () => Get.to(PrivacyAndSecurityPage()),
                  ),
                  AccButton(
                    text: "Legal",
                    onPressed: () => Get.to(TermsAndConditionsPage()),
                  ),
                  AccButton(
                    text: "Invite Friends",
                    onPressed: () => Get.to(InviteFriendsPage()),
                  ),
                  AccButton(
                    text: "Link BVN",
                    onPressed: () => Get.to(BVNVerificationPage()),
                  ),
                  AccButton(
                    text: "Contact Us",
                    onPressed: () {},
                  ),
                  AccButton(
                    text: "Rate Us",
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildUserPanel() {
    return Container(
      height: 120,
      width: width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            child: Image(
              image: AssetImage("images/user.png"),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20.0),
          Container(
            height: 100.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Darrell Chan",
                  style: isDarkModeON
                      ? kAuthTitleTextStyle.copyWith(
                          fontSize: 23.0, color: kTextColor3)
                      : kAuthTitleTextStyle.copyWith(fontSize: 23.0),
                ),
                Text("abc@gmail.com",
                    style: kLinkLabelStyle.copyWith(
                        color: isDarkModeON ? kTertiaryColor : kPrimaryColor)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
