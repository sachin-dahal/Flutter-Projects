import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/modules/presentation/transactions/view/transactions_summary_page.dart';
import 'package:esusu_social/modules/presentation/transactions/widget/transaction_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            KAppBar(text: "Transactions"),
            SizedBox(height: 5.0),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  Container(
                    width: Get.width * 0.95,
                    child: Wrap(
                      // spacing: 10.0,
                      runSpacing: 8.0,
                      children: [
                        SizedBox(
                          height: 1.0,
                          width: double.infinity,
                        ),
                        TransactionsCardWidget(
                          imgUrl: "images/done.png",
                          title: "Transfer to Denial",
                          status: "Succeed",
                          amount: "10,000 INR",
                          date: "May 21, 2021",
                          onPressed: () => Get.to(TransactionsSummaryPage()),
                        ),
                        Divider(height: 2, thickness: 1),
                        TransactionsCardWidget(
                          imgUrl: "images/done.png",
                          title: "Transfer to Denial",
                          status: "Succeed",
                          amount: "10,000 INR",
                          date: "May 21, 2021",
                          onPressed: () => Get.to(TransactionsSummaryPage()),
                        ),
                        Divider(height: 2, thickness: 1),
                        TransactionsCardWidget(
                          imgUrl: "images/not_done.png",
                          title: "Transfer to Denial",
                          status: "Succeed",
                          amount: "10,000 INR",
                          date: "May 21, 2021",
                          onPressed: () => Get.to(TransactionsSummaryPage()),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
