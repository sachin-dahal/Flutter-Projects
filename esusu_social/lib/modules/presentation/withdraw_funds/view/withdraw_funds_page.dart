import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kButton.dart';
import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/add_wallet/controller/add_wallet_controller.dart';
import 'package:esusu_social/modules/presentation/add_wallet/widgets/wallet_account_card.dart';
import 'package:esusu_social/modules/presentation/add_wallet/widgets/wallet_transfer_button_widget.dart';
import 'package:esusu_social/modules/presentation/withdraw_funds/controller/withdraw_funds_controller.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WithdrawFundsPage extends StatelessWidget {
  final WithdrawFundController _withdrawFundController =
      Get.put(WithdrawFundController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: GetBuilder<WithdrawFundController>(
          builder: (_withdrawFundController) {
            return Column(
              children: [
                KAppBar(text: "Withdraw Funds"),
                SizedBox(height: 20.0),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    children: [
                      // SizedBox(height: 50.0),
                      _buildUSSDPanel(),
                      SizedBox(height: 100.0),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildUSSDPanel() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter The Amount to Withdraw".toUpperCase(),
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
              color: isDarkModeON ? kTertiaryColor : kPrimaryColor,
            )),
          ),
          KTextField(
            isBgColor: isDarkModeON,
            hintText: "Enter amount here",
          ),
          SizedBox(height: 30.0),
          Text(
            "Enter Account Number".toUpperCase(),
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
              color: isDarkModeON ? kTertiaryColor : kPrimaryColor,
            )),
          ),
          KTextField(
            isBgColor: isDarkModeON,
            hintText: "**** **** **** ****",
          ),
          SizedBox(height: 30.0),
          Text(
            "Slect Bank".toUpperCase(),
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
              color: isDarkModeON ? kTertiaryColor : kPrimaryColor,
            )),
          ),
          Container(
            decoration: BoxDecoration(
              color: isDarkModeON ? kDarkBackgroundColor : Color(0xFFF0F2F4),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: GetBuilder<WithdrawFundController>(
              builder: (_withdrawFundController) {
                return DropdownButton<String>(
                  isExpanded: true,
                  underline: Divider(
                    color: Colors.grey[400],
                    thickness: 1.5,
                    height: 0.0,
                  ),
                  focusColor:
                      isDarkModeON ? kDarkBackgroundColor : Color(0xFFF0F2F4),
                  value: _withdrawFundController.selectedBank,
                  icon: Icon(FeatherIcons.chevronDown),
                  dropdownColor:
                      isDarkModeON ? kDarkBackgroundColor : kTextColor3,
                  items: _withdrawFundController.bankList.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                color: isDarkModeON ? kTextColor3 : kTextColor1,
                                fontWeight: FontWeight.w500)),
                      ),
                    );
                  }).toList(),
                  onChanged: _withdrawFundController.changeBank,
                );
              },
            ),
          ),
          SizedBox(height: 60.0),
          Center(child: KButton(text: "Submit", onPressed: () {})),
          Divider(
            height: 15.0,
            thickness: 1,
            color: isDarkModeON ? kTextColor3 : Colors.grey[100],
          ),
        ],
      ),
    );
  }
}
