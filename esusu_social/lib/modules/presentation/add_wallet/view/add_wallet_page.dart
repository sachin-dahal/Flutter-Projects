import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/add_wallet/controller/add_wallet_controller.dart';
import 'package:esusu_social/modules/presentation/add_wallet/widgets/wallet_account_card.dart';
import 'package:esusu_social/modules/presentation/add_wallet/widgets/wallet_transfer_button_widget.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddWalletPage extends StatelessWidget {
  final AddWalletController _addWalletController =
      Get.put(AddWalletController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: GetBuilder<AddWalletController>(
          builder: (_addWalletController) {
            return Column(
              children: [
                KAppBar(text: "Add Wallet"),
                SizedBox(height: 20.0),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          WalletTransferButton(
                            text: "Bank Transfer",
                            isSelected: _addWalletController.isBankSelected,
                            onPressed: () =>
                                _addWalletController.toggleBankUssd(true),
                          ),
                          SizedBox(width: 30.0),
                          WalletTransferButton(
                            text: "USSD",
                            isSelected: !_addWalletController.isBankSelected,
                            onPressed: _addWalletController.toggleBankUssd,
                          ),
                        ],
                      ),
                      SizedBox(height: 50.0),
                      _addWalletController.isBankSelected
                          ? _buildBankTransctionPanel()
                          : _buildUSSDPanel(),
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
          Center(
            child: Text(
              "Transfer to the bank account".toUpperCase(),
              style: kLinkLabelStyle.copyWith(
                  color: isDarkModeON ? kTextColor3 : kTextColor1,
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0),
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            "Enter Topup Amount (\$)".toUpperCase(),
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
              color: isDarkModeON ? kTertiaryColor : kPrimaryColor,
            )),
          ),
          KTextField(
            isBgColor: isDarkModeON,
            hintText: "10000",
          ),
          SizedBox(height: 30.0),
          WalletAccountCard(
            title: "Access Bank",
            subtitle: "*901*1*100000*83839#",
            buttonText: "Dial",
          ),
          Divider(
            height: 15.0,
            thickness: 1,
            color: isDarkModeON ? kTextColor3 : Colors.grey[100],
          ),
          WalletAccountCard(
            title: "Access Bank",
            subtitle: "*901*1*100000*83839#",
            buttonText: "Dial",
          ),
          Divider(
            height: 15.0,
            thickness: 1,
            color: isDarkModeON ? kTextColor3 : Colors.grey[100],
          ),
          WalletAccountCard(
            title: "Access Bank",
            subtitle: "*901*1*100000*83839#",
            buttonText: "Dial",
          ),
          Divider(
            height: 15.0,
            thickness: 1,
            color: isDarkModeON ? kTextColor3 : Colors.grey[100],
          ),
        ],
      ),
    );
  }

  Widget _buildBankTransctionPanel() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Center(
            child: Text(
              "Transfer to the account Below".toUpperCase(),
              style: kLinkLabelStyle.copyWith(
                  color: isDarkModeON ? kTextColor3 : kTextColor1,
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0),
            ),
          ),
          SizedBox(height: 10.0),
          WalletAccountCard(
              title: "Bank", subtitle: "Sterlink Bank", isButton: false),
          Divider(
            height: 15.0,
            thickness: 1,
            color: isDarkModeON ? kTextColor3 : Colors.grey[100],
          ),
          WalletAccountCard(
            title: "Bank",
            subtitle: "8383928831",
            buttonText: "Copy",
          ),
          Divider(
            height: 15.0,
            thickness: 1,
            color: isDarkModeON ? kTextColor3 : Colors.grey[100],
          ),
          WalletAccountCard(
              title: "Beneficiary", subtitle: "Denial Ozeh", isButton: false),
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
