import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kButton.dart';
import 'package:esusu_social/modules/presentation/bill_payment/controller/bill_payment_controller.dart';
import 'package:esusu_social/modules/presentation/bottom_bar/view/bottom_bar_page.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmSendMoneyPage extends StatelessWidget {
  final BillPaymentController _billPaymentController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: Column(
          children: [
            KAppBar(text: "Send Money"),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "bank name".toUpperCase(),
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                                color: isDarkModeON
                                    ? kTertiaryColor
                                    : kPrimaryColor)),
                      ),
                      Text(
                        "Access Bank".toUpperCase(),
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                                color:
                                    isDarkModeON ? kTextColor3 : kTextColor1)),
                      )
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "account #".toUpperCase(),
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                                color: isDarkModeON
                                    ? kTertiaryColor
                                    : kPrimaryColor)),
                      ),
                      Text(
                        "1234567890123".toUpperCase(),
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                                color:
                                    isDarkModeON ? kTextColor3 : kTextColor1)),
                      )
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Amount".toUpperCase(),
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                                color: isDarkModeON
                                    ? kTertiaryColor
                                    : kPrimaryColor)),
                      ),
                      Text(
                        "900 INR".toUpperCase(),
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                                color:
                                    isDarkModeON ? kTextColor3 : kTextColor1)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            KButton(text: "Send", onPressed: () => Get.offAll(BottomBarPage())),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
