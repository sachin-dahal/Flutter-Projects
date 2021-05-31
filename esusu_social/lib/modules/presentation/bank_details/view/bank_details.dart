import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kButton.dart';
import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/bank_details/controller/bank_details_controller.dart';
import 'package:esusu_social/modules/presentation/bank_details/widgets/bank_card_widget.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BankDetailsPage extends StatelessWidget {
  final BankDetailsController _bankDetailsController =
      Get.put(BankDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: GetBuilder<BankDetailsController>(
            builder: (_bankDetailsController) {
              return Column(
                children: [
                  KAppBar(text: "Bank Details"),
                  SizedBox(height: 20.0),
                  ListView(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    children: _bankDetailsController.isList
                        ? [
                            BankCardWidget(
                                bankName: "ACCESS BANK",
                                accountHolder: "Darrell Chan",
                                accNum: "0093971407"),
                            BankCardWidget(
                                bankName: "Ecobank Pic".toUpperCase(),
                                accountHolder: "Darrell Chan",
                                accNum: "0093971407"),
                          ]
                        : [
                            Padding(
                              padding: EdgeInsets.all(50.0),
                              child: Container(
                                height: 180.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(200.0),
                                ),
                                child: Image(
                                  image: AssetImage("images/bank.png"),
                                ),
                              ),
                            ),
                            Text(
                              "You havn’t add any bank details yet!"
                                  .toUpperCase(),
                              textAlign: TextAlign.center,
                              style: kLinkLabelStyle.copyWith(
                                  color: kTextColor1,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.0),
                            ),
                          ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            KButton(
                text: 'Add Bank',
                onPressed: () {
                  Get.bottomSheet(
                    _buildBottomSheet(),
                    barrierColor: Colors.transparent,
                  );
                }),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSheet() {
    return Container(
      height: Get.height * 0.55,
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0)),
        boxShadow: [
          BoxShadow(
              color: kShadowColor.withOpacity(0.6),
              offset: Offset(0, 0),
              blurRadius: 10.0)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.0),
          Text("SELECT BANK",
              style: kLinkLabelStyle.copyWith(color: kTextColor3)),
          KTextField(
            isBgColor: true,
            hintText: "Bank Name",
          ),
          SizedBox(height: 22.0),
          Text("ACCOUNT", style: kLinkLabelStyle.copyWith(color: kTextColor3)),
          KTextField(
            isBgColor: true,
            hintText: "Enter Account Number",
          ),
          SizedBox(height: 22.0),
          Text("NAME", style: kLinkLabelStyle.copyWith(color: kTextColor3)),
          KTextField(
            isBgColor: true,
            hintText: "Waiting for Account Number",
          ),
          SizedBox(height: 25.0),
          Center(
            child: KButton(
              text: 'Add Bank',
              onPressed: () {
                _bankDetailsController.updateList();
                Get.back();
              },
              color: kTextColor3,
              textColor: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
