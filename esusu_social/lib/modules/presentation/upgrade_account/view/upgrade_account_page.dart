import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kButton.dart';
import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/add_wallet/widgets/wallet_transfer_button_widget.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UpgradeAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: Column(
          children: [
            KAppBar(text: "Upgrade Account"),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.3),
                    child: WalletTransferButton(
                      text: "Tier 0 of 3",
                      isSelected: true,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            "Upgrade Your account".toUpperCase(),
                            style: kLinkLabelStyle.copyWith(
                                color: isDarkModeON ? kTextColor3 : kTextColor1,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Center(
                          child: Text(
                            "You are a Tier 0 gomoney account holder. You can upgrade to a full bank account below or from your profile at anytime.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: kLabelStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        KTextField(
                            isBgColor: isDarkModeON, hintText: "Enter BVN..."),
                        SizedBox(height: 30.0),
                        Container(
                          height: 150.0,
                          width: Get.width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: isDarkModeON
                                  ? kTertiaryColor
                                  : Colors.grey[400],
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(35.0),
                            child: Image(
                              color: isDarkModeON
                                  ? kTertiaryColor
                                  : Colors.grey[400],
                              image: AssetImage("images/img.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Center(
                          child: Text(
                            "Upload Image",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: kLabelStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                          ),
                        ),
                        SizedBox(height: 50.0),
                        Container(
                          height: 150.0,
                          width: Get.width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: isDarkModeON
                                  ? kTertiaryColor
                                  : Colors.grey[400],
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(35.0),
                            child: Icon(
                              FeatherIcons.fileText,
                              color: Colors.grey[400],
                              size: 70.0,
                            ),
                            // child: Image(
                            //   color: isDarkModeON
                            //       ? kTertiaryColor
                            //       : Colors.grey[400],
                            //   image: AssetImage("images/img.png"),
                            //   fit: BoxFit.contain,
                            // ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Center(
                          child: Text(
                            "Upload Recent Utility Bill",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: kLabelStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                          ),
                        ),
                        SizedBox(height: 100.0),
                        KButton(text: "Begin Upgrade", onPressed: () {}),
                        SizedBox(height: 50.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
