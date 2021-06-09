import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/bill_payment/controller/bill_payment_controller.dart';
import 'package:esusu_social/modules/presentation/bill_payment/view/bill_payment_details.dart';
import 'package:esusu_social/modules/presentation/bill_payment/view/bill_payment_list.dart';
import 'package:esusu_social/modules/presentation/bill_payment/widgets/bill_card.dart';
import 'package:esusu_social/modules/presentation/data/view/data_page.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BillPaymentPage extends StatelessWidget {
  final BillPaymentController _billPaymentController =
      Get.put(BillPaymentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: Column(
          children: [
            KAppBar(text: "Bill Payment"),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      // spacing: 20.0,
                      // runSpacing: 20.0,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                                onTap: () => Get.to(BillPaymentListPage()),
                                child: Text("View All >",
                                    style: kLinkLabelStyle.copyWith(
                                        color: isDarkModeON
                                            ? kTertiaryColor
                                            : kPrimaryColor)))),
                        SizedBox(height: 10.0),
                        Card(
                          color: isDarkModeON ? kPrimaryColor : kTextColor3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 15.0,
                                right: 15.0,
                                top: 10.0,
                                bottom: 20.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Airtime",
                                  style: kLabelStyle.copyWith(
                                    color: isDarkModeON
                                        ? kTextColor3
                                        : kTextColor1,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                SizedBox(height: 15.0),
                                Container(
                                  height: 50.0,
                                  width: Get.width * 0.85,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  child: ListView(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    padding: EdgeInsets.zero,
                                    children: [
                                      Image(
                                        image: AssetImage("images/airtel.jpg"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/mtn.jpeg"),
                                        width: 50.0,
                                        fit: BoxFit.fitHeight,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/glo.jpeg"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image:
                                            AssetImage("images/9_mobile.png"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/ntel.png"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/glo.jpeg"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/airtel.jpg"),
                                        width: 50.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Card(
                          color: isDarkModeON ? kPrimaryColor : kTextColor3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 15.0,
                                right: 15.0,
                                top: 10.0,
                                bottom: 20.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Data",
                                  style: kLabelStyle.copyWith(
                                    color: isDarkModeON
                                        ? kTextColor3
                                        : kTextColor1,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                SizedBox(height: 15.0),
                                Container(
                                  height: 50.0,
                                  width: Get.width * 0.85,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  child: ListView(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    padding: EdgeInsets.zero,
                                    children: [
                                      Image(
                                        image: AssetImage("images/ntel.png"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image:
                                            AssetImage("images/9_mobile.png"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/airtel.jpg"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/glo.jpeg"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/mtn.jpeg"),
                                        width: 50.0,
                                        fit: BoxFit.fitHeight,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/glo.jpeg"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/airtel.jpg"),
                                        width: 50.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Card(
                          color: isDarkModeON ? kPrimaryColor : kTextColor3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 15.0,
                                right: 15.0,
                                top: 10.0,
                                bottom: 20.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Internet",
                                  style: kLabelStyle.copyWith(
                                    color: isDarkModeON
                                        ? kTextColor3
                                        : kTextColor1,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                SizedBox(height: 15.0),
                                Container(
                                  height: 50.0,
                                  width: Get.width * 0.85,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  child: ListView(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    padding: EdgeInsets.zero,
                                    children: [
                                      Image(
                                        image: AssetImage("images/airtel.jpg"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/mtn.jpeg"),
                                        width: 50.0,
                                        fit: BoxFit.fitHeight,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/glo.jpeg"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image:
                                            AssetImage("images/9_mobile.png"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/ntel.png"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/glo.jpeg"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/airtel.jpg"),
                                        width: 50.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Card(
                          color: isDarkModeON ? kPrimaryColor : kTextColor3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 15.0,
                                right: 15.0,
                                top: 10.0,
                                bottom: 20.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Electricity",
                                  style: kLabelStyle.copyWith(
                                    color: isDarkModeON
                                        ? kTextColor3
                                        : kTextColor1,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                SizedBox(height: 15.0),
                                Container(
                                  height: 50.0,
                                  width: Get.width * 0.85,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(25.0)),
                                  child: ListView(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    padding: EdgeInsets.zero,
                                    children: [
                                      Image(
                                        image: AssetImage("images/ntel.png"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image:
                                            AssetImage("images/9_mobile.png"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/airtel.jpg"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/glo.jpeg"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/mtn.jpeg"),
                                        width: 50.0,
                                        fit: BoxFit.fitHeight,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/glo.jpeg"),
                                        width: 50.0,
                                      ),
                                      SizedBox(width: 30.0),
                                      Image(
                                        image: AssetImage("images/airtel.jpg"),
                                        width: 50.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40.0),
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
