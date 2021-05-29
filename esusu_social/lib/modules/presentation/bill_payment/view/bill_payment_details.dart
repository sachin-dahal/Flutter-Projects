import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kButton.dart';
import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/bill_payment/controller/bill_payment_controller.dart';
import 'package:esusu_social/modules/presentation/personal_details/controller/personal_details_controller.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BillPaymentDetailsPage extends StatelessWidget {
  final BillPaymentController _billPaymentController = Get.find();
  final String title;

  BillPaymentDetailsPage({
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
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                children: [
                  SizedBox(height: 10.0),
                  Text("Mobile Number".toUpperCase(), style: kLinkLabelStyle),
                  SizedBox(height: 5.0),
                  KTextField(
                    hintText: "Enter Mobile Number",
                  ),
                  SizedBox(height: 25.0),
                  Text("Select package".toUpperCase(), style: kLinkLabelStyle),
                  _buildDropDown(),
                ],
              ),
            ),
            KButton(text: "Next", onPressed: () {}),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
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
          value: _billPaymentController.selectedItem,
          icon: Icon(FeatherIcons.chevronDown),
          items: _billPaymentController.packageList.map((String value) {
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
          onChanged: _billPaymentController.changeIndex,
        );
      }),
    );
  }
}
