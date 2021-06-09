import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/bill_payment/controller/bill_payment_controller.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BillPaymentListPage extends StatelessWidget {
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
            SizedBox(height: 10.0),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          onTap: () {},
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 15.0),
                          leading: Icon(
                            FontAwesomeIcons.wallet,
                            size: 20.0,
                            color: kPrimaryColor,
                          ),
                          title: Text("Bank Transfer",
                              style: kLabelStyle.copyWith(
                                  color: isDarkModeON
                                      ? kTextColor3
                                      : kTextColor1)),
                          trailing: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 20.0,
                            color: kPrimaryColor,
                          ),
                        ),
                        Divider(height: 1, color: Colors.grey[300]),
                        ListTile(
                          onTap: () {},
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 15.0),
                          leading: Icon(
                            FontAwesomeIcons.mobileAlt,
                            size: 20.0,
                            color: kPrimaryColor,
                          ),
                          title: Text(
                            "Airtime Subscription",
                            style: kLabelStyle.copyWith(
                                color:
                                    isDarkModeON ? kTextColor3 : kTextColor1),
                          ),
                          trailing: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 20.0,
                            color: kPrimaryColor,
                          ),
                        ),
                        Divider(height: 1, color: Colors.grey[300]),
                        ListTile(
                          onTap: () {},
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 15.0),
                          leading: Icon(
                            FontAwesomeIcons.circleNotch,
                            size: 20.0,
                            color: kPrimaryColor,
                          ),
                          title: Text(
                            "Data Subscription",
                            style: kLabelStyle.copyWith(
                                color:
                                    isDarkModeON ? kTextColor3 : kTextColor1),
                          ),
                          trailing: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 20.0,
                            color: kPrimaryColor,
                          ),
                        ),
                        Divider(height: 1, color: Colors.grey[300]),
                        ListTile(
                          onTap: () {},
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 15.0),
                          leading: Icon(
                            FontAwesomeIcons.lightbulb,
                            size: 20.0,
                            color: kPrimaryColor,
                          ),
                          title: Text(
                            "Electricity Payments",
                            style: kLabelStyle.copyWith(
                                color:
                                    isDarkModeON ? kTextColor3 : kTextColor1),
                          ),
                          trailing: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 20.0,
                            color: kPrimaryColor,
                          ),
                        ),
                        Divider(height: 1, color: Colors.grey[300]),
                        ListTile(
                          onTap: () {},
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 15.0),
                          leading: Icon(
                            FontAwesomeIcons.cloud,
                            size: 20.0,
                            color: kPrimaryColor,
                          ),
                          title: Text(
                            "LCC Tolls",
                            style: kLabelStyle.copyWith(
                                color:
                                    isDarkModeON ? kTextColor3 : kTextColor1),
                          ),
                          trailing: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 20.0,
                            color: kPrimaryColor,
                          ),
                        ),
                        Divider(height: 1, color: Colors.grey[300]),
                        ListTile(
                          onTap: () {},
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 15.0),
                          leading: Icon(
                            FontAwesomeIcons.intercom,
                            size: 20.0,
                            color: kPrimaryColor,
                          ),
                          title: Text(
                            "Federal Taxes",
                            style: kLabelStyle.copyWith(
                                color:
                                    isDarkModeON ? kTextColor3 : kTextColor1),
                          ),
                          trailing: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 20.0,
                            color: kPrimaryColor,
                          ),
                        ),
                        Divider(height: 1, color: Colors.grey[300]),
                        ListTile(
                          onTap: () {},
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 15.0),
                          leading: Icon(
                            FontAwesomeIcons.tv,
                            size: 20.0,
                            color: kPrimaryColor,
                          ),
                          title: Text(
                            "TV Subscription",
                            style: kLabelStyle.copyWith(
                                color:
                                    isDarkModeON ? kTextColor3 : kTextColor1),
                          ),
                          trailing: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 20.0,
                            color: kPrimaryColor,
                          ),
                        ),
                        Divider(height: 1, color: Colors.grey[300]),
                        SizedBox(height: 20.0),
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
