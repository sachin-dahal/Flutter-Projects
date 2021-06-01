import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/add_wallet/view/add_wallet_page.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageController extends GetxController {
  int selectedIndex = 0;

  void changeIndex(int index) {
    selectedIndex = index;
    update();
  }

  List<Widget> onboardingPages = [
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
              style: isDarkModeON
                  ? kAuthTitleTextStyle.copyWith(
                      fontSize: 18.0, color: kTextColor1)
                  : kAuthTitleTextStyle.copyWith(fontSize: 18.0)),
          Center(
            child: Text("\$7,425",
                style: kLinkLabelStyle.copyWith(
                    color: kPrimaryColor,
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
                    color: kTextColor1,
                    fontSize: 11.0,
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

  List<Widget> onboardingPagesDarkMode = [
    Container(
      height: Get.height * 0.18,
      width: Get.width * 0.88,
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: Color(0xFF056A9E),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Wallet",
              style: kAuthTitleTextStyle.copyWith(
                  fontSize: 18.0, color: kTextColor3)),
          Center(
            child: Text("\$7,425",
                style: kLinkLabelStyle.copyWith(
                    fontSize: 28.0,
                    color: kTertiaryColor,
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
                    color: kTertiaryColor,
                  ),
                ),
              ),
              Text(
                "Available Balance",
                style: kLinkLabelStyle.copyWith(
                    fontSize: 11.0,
                    color: kTextColor3,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Withdraw Funds",
                style: kLinkLabelStyle.copyWith(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w800,
                  color: kTertiaryColor,
                ),
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
                    color: isDarkModeON ? kTextColor3 : kTextColor1,
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
}
