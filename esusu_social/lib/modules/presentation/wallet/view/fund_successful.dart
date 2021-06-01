import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kButton.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/bottom_bar/view/bottom_bar_page.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FundSuccessfulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: Column(
          children: [
            KAppBar(text: "Wallet"),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Container(
                      height: 220.0,
                      width: 240.0,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(200.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.green.withOpacity(0.3),
                              offset: Offset(0, 0),
                              blurRadius: 20.0),
                        ],
                      ),
                      child: Container(
                        height: 180.0,
                        width: 200.0,
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(200.0),
                        ),
                        child: Container(
                          height: 120.0,
                          width: 140.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200.0),
                          ),
                          child: Image(
                            image: AssetImage("images/done.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Funds has been sucessfully added to wallet".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: kLinkLabelStyle.copyWith(
                        color: isDarkModeON ? kTextColor3 : kTextColor1,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0),
                  ),
                ],
              ),
            ),
            KButton(
                text: 'GOTO Home', onPressed: () => Get.to(BottomBarPage())),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
