import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/add_wallet/view/add_wallet_page.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  final List<Widget> onboardingPages = [
    Container(
      height: Get.height * 0.18,
      width: Get.width * 0.88,
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: kTextColor3,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Wallet",
              style: kAuthTitleTextStyle.copyWith(fontSize: 18.0)),
          Center(
            child: Text("\$7,425",
                style: kLinkLabelStyle.copyWith(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.5)),
          ),
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Get.to(AddWalletPage()),
                child: Text(
                  "Fund Wallet",
                  style: kLinkLabelStyle.copyWith(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.red),
                ),
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
    Container(
      height: Get.height * 0.18,
      width: Get.width * 0.88,
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: Colors.red[100],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Wallet",
              style: kAuthTitleTextStyle.copyWith(
                  color: kTextColor3, fontSize: 18.0)),
          Center(
            child: Text("\$7,425",
                style: kLinkLabelStyle.copyWith(
                    color: kTextColor3,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.5)),
          ),
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Get.to(AddWalletPage()),
                child: Text(
                  "Fund Wallet",
                  style: kLinkLabelStyle.copyWith(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.red),
                ),
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
  ];
  int selectedIndex = 0;

  void changeIndex(int index) {
    selectedIndex = index;
    update();
  }

  List<String> onboardingTitles = [
    "Business on Your Mobile",
    "Manage Inventory",
    "Business Reports",
    "Use Both Offline & Online",
    "Customized for Your Business",
  ];

  List<String> onboardingText = [
    "With Karobar app you can manage your business billing inventory & accounting all from your mobile.",
    "Maintain your business inventory easily with Karobar app and know how your stocks are performing.",
    "Know how your business is performing with various insightful reports to help you make better business decisions.",
    "Run your business confidently with Karobar app wherever you are without worrying about an internet connection.",
    "Make Karobar app your own by customizing its theme  and accounting features according to your business need.",
  ];
}
