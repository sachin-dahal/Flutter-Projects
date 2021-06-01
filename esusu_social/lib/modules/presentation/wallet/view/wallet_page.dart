import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kButton.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/wallet/controller/wallet_controller.dart';
import 'package:esusu_social/modules/presentation/wallet/view/fund_successful.dart';
import 'package:esusu_social/modules/presentation/wallet/view/fund_unsuccessful.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletPage extends StatelessWidget {
  final WalletController _walletController = Get.put(WalletController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: GetBuilder<WalletController>(
        builder: (_walletController) {
          return Container(
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
                      Center(
                        child: Text(
                          "ENTER AMOUNT TO ADD IN WALLET",
                          style: kLinkLabelStyle.copyWith(
                              color: isDarkModeON ? kTextColor3 : kTextColor1,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.0),
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 20.0),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: kPrimaryColor, width: 1.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    BorderSide(color: kPrimaryColor, width: 2),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                KButton(
                    text: "Add",
                    onPressed: () {
                      if (_walletController.amountTransferController.text ==
                              null ||
                          _walletController.amountTransferController.text ==
                              "") {
                        Get.to(FundUnSuccessfulPage());
                      } else {
                        Get.to(FundSuccessfulPage());
                      }
                    }),
                SizedBox(height: 30.0),
              ],
            ),
          );
        },
      ),
    );
  }
}
