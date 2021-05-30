import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kButton.dart';
import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/bill_payment/controller/bill_payment_controller.dart';
import 'package:esusu_social/modules/presentation/bill_payment/view/send_money.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BillConfirmPaymentPage extends StatelessWidget {
  final BillPaymentController _billPaymentController = Get.find();
  final String title;

  BillConfirmPaymentPage({
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            KAppBar(text: title),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                children: [
                  SizedBox(height: 10.0),
                  Text("Select payment method".toUpperCase(),
                      style: kLinkLabelStyle),
                  SizedBox(height: 5.0),
                  _buildRadioButtons(),
                  SizedBox(height: 25.0),
                  Text("Select card".toUpperCase(), style: kLinkLabelStyle),
                  _buildDropDown(),
                  SizedBox(height: 25.0),
                  _buildVisaCard(),
                  SizedBox(height: 80.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total".toUpperCase(),
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                                color: kPrimaryColor)),
                      ),
                      Text(
                        "900 INR",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                                color: kTextColor1)),
                      )
                    ],
                  ),
                  SizedBox(height: 50.0),
                ],
              ),
            ),
            KButton(
                text: "Confirm Payment",
                onPressed: () => Get.to(SendMoneyPage())),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }

  Widget _buildVisaCard() {
    return Container(
      height: 200.0,
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xFF0089D0), Color(0xFF0C3DA3)]),
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 50.0,
                child: Image(
                  image: AssetImage("images/visa.png"),
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Balance",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 12.0, color: kTextColor3)),
              ),
              Text(
                "INR 147,800",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.w600,
                        color: kTextColor3)),
              ),
              SizedBox(height: 30.0),
              GetBuilder<BillPaymentController>(
                builder: (_billPaymentController) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _billPaymentController.selectedCard,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                letterSpacing: 1,
                                fontSize: 13.0,
                                color: kTextColor3)),
                      ),
                      Text(
                        "03/20",
                        style: GoogleFonts.poppins(
                            textStyle:
                                TextStyle(fontSize: 13.0, color: kTextColor3)),
                      ),
                    ],
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildRadioButtons() {
    return GetBuilder<BillPaymentController>(builder: (_billPaymentController) {
      return Row(
        children: [
          Expanded(
            child: RadioListTile(
              value: PaymentRB.Card,
              groupValue: _billPaymentController.paymentRB,
              onChanged: _billPaymentController.changeRB,
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Card",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                        color: kTextColor1)),
              ),
            ),
          ),
          Expanded(
            child: RadioListTile(
              value: PaymentRB.Wallet,
              groupValue: _billPaymentController.paymentRB,
              onChanged: _billPaymentController.changeRB,
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Wallet",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                        color: kTextColor1)),
              ),
            ),
          ),
          SizedBox(width: 100.0),
        ],
      );
    });
  }

  Widget _buildDropDown() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF0F2F4),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child:
          GetBuilder<BillPaymentController>(builder: (_billPaymentController) {
        return DropdownButton<String>(
          isExpanded: true,
          underline: Divider(
            color: Colors.grey[400],
            thickness: 1.5,
            height: 0.0,
          ),
          focusColor: Color(0xFFF0F2F4),
          value: _billPaymentController.selectedCard,
          icon: Icon(FeatherIcons.chevronDown),
          items: _billPaymentController.cardList.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        color: kTextColor1, fontWeight: FontWeight.w500)),
              ),
            );
          }).toList(),
          onChanged: _billPaymentController.changeCard,
        );
      }),
    );
  }
}
