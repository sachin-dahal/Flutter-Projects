import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/account_page/widgets/acc_button_widget.dart';
import 'package:esusu_social/modules/presentation/bank_details/view/bank_details.dart';
import 'package:esusu_social/modules/presentation/bvn_verification/view/bvn_verification_page.dart';
import 'package:esusu_social/modules/presentation/invite_friends/view/invite_friends_page.dart';
import 'package:esusu_social/modules/presentation/notifications/view/notifications_page.dart';
import 'package:esusu_social/modules/presentation/personal_details/view/personal_details.dart';
import 'package:esusu_social/modules/presentation/privacy_and_security/view/privacy_and_security.dart';
import 'package:esusu_social/modules/presentation/terms_and_conditions/view/terms_and_conditions.dart';
import 'package:esusu_social/modules/presentation/wallet/view/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPage extends StatelessWidget {
  final height = Get.height;
  final width = Get.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  //TODO: just for navigation v
                  AccButton(
                    text: "Wallet",
                    onPressed: () => Get.to(WalletPage()),
                  ),
                  //TODO: just for navigation ^
                  AccButton(
                    text: "Upgrade Account",
                    onPressed: () {},
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
                Text("Darrell Chan",
                    style: kAuthTitleTextStyle.copyWith(fontSize: 23.0)),
                Text("abc@gmail.com", style: kLinkLabelStyle),
              ],
            ),
          )
        ],
      ),
    );
  }
}
