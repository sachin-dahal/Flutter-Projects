import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/modules/presentation/bill_payment/controller/bill_payment_controller.dart';
import 'package:esusu_social/modules/presentation/bill_payment/view/bill_payment_details.dart';
import 'package:esusu_social/modules/presentation/bill_payment/widgets/bill_card.dart';
import 'package:esusu_social/modules/presentation/data/view/data_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BillPaymentPage extends StatelessWidget {
  final BillPaymentController _billPaymentController =
      Get.put(BillPaymentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            KAppBar(text: "Bill Payment"),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: [
                  BillCard(
                    imgUrl: "images/contact.png",
                    text: "Airtime",
                    onPressed: () => Get.to(
                      BillPaymentDetailsPage(
                        title: "Airtime",
                      ),
                    ),
                  ),
                  BillCard(
                    imgUrl: "images/data.png",
                    text: "Data",
                    onPressed: () => Get.to(DataPage()),
                  ),
                  BillCard(
                    imgUrl: "images/internet.png",
                    text: "Internet",
                    onPressed: () => Get.to(
                      BillPaymentDetailsPage(
                        title: "Internet",
                      ),
                    ),
                  ),
                  BillCard(
                    imgUrl: "images/electricity.png",
                    text: "Electricity",
                    onPressed: () => Get.to(
                      BillPaymentDetailsPage(
                        title: "Electricity",
                      ),
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
