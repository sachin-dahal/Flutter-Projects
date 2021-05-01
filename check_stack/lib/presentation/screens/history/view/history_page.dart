import 'package:check_stack/presentation/screens/history/view/history_details.dart';
import 'package:check_stack/presentation/screens/homepage/controller/homepage_controller.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:check_stack/utility/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utility/colors.dart';
import '../../../common_widgets/drawer_widget.dart';

class HistoryPage extends StatelessWidget {
  final HomepageController _homepageController = Get.find();

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: MainDrawer(),
      body: ScrollConfiguration(
        behavior: ScrollBehavior()
          ..buildViewportChrome(context, null, AxisDirection.down),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTopNavPanel(),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Transactions",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ),
            ),
            Divider(color: kTextColor2),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: [
                  GestureDetector(
                      onTap: () => Get.to(HistoryDetailsPage()),
                      child: _buildHistoryPart()),
                  Divider(color: kTextColor2),
                  GestureDetector(
                      onTap: () => Get.to(HistoryDetailsPage()),
                      child: _buildHistoryPart()),
                  Divider(color: kTextColor2),
                  GestureDetector(
                      onTap: () => Get.to(HistoryDetailsPage()),
                      child: _buildHistoryPart()),
                  Divider(color: kTextColor2),
                  GestureDetector(
                      onTap: () => Get.to(HistoryDetailsPage()),
                      child: _buildHistoryPart()),
                  Divider(color: kTextColor2),
                  GestureDetector(
                      onTap: () => Get.to(HistoryDetailsPage()),
                      child: _buildHistoryPart()),
                  Divider(color: kTextColor2),
                  GestureDetector(
                      onTap: () => Get.to(HistoryDetailsPage()),
                      child: _buildHistoryPart()),
                  Divider(color: kTextColor2),
                  GestureDetector(
                      onTap: () => Get.to(HistoryDetailsPage()),
                      child: _buildHistoryPart()),
                  Divider(color: kTextColor2),
                  GestureDetector(
                      onTap: () => Get.to(HistoryDetailsPage()),
                      child: _buildHistoryPart()),
                  Divider(color: kTextColor2),
                  GestureDetector(
                      onTap: () => Get.to(HistoryDetailsPage()),
                      child: _buildHistoryPart()),
                  Divider(color: kTextColor2),
                  GestureDetector(
                      onTap: () => Get.to(HistoryDetailsPage()),
                      child: _buildHistoryPart()),
                  Divider(color: kTextColor2),
                  GestureDetector(
                      onTap: () => Get.to(HistoryDetailsPage()),
                      child: _buildHistoryPart()),
                  Divider(color: kTextColor2),
                  GestureDetector(
                      onTap: () => Get.to(HistoryDetailsPage()),
                      child: _buildHistoryPart()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryPart() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      margin: EdgeInsets.symmetric(vertical: 2.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "2:19",
                style: GoogleFonts.poppins(),
              ),
              Text(
                "Check Amount",
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "\$122.90",
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  color: kPrimaryColor.withOpacity(0.2),
                ),
                child: Text(
                  "AM",
                  style: TextStyle(color: kPrimaryColor, fontSize: 12.0),
                ),
              ),
              Text(
                "08 Jun, 2021",
                style: GoogleFonts.poppins(),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  color: Colors.green.withOpacity(0.2),
                ),
                child: Text(
                  "COMPLETED",
                  style: TextStyle(color: Colors.green[500], fontSize: 12.0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTopNavPanel() {
    return Container(
      height: 100.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      alignment: Alignment.bottomCenter,
      color: kBgColor1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(FeatherIcons.arrowLeft),
            onPressed: () => Get.back(),
          ),
          Text(
            'HISTORY',
            style: kBarTextStyle,
          ),
          TextButton(
            onPressed: () => _key.currentState.openDrawer(),
            child: Container(
              height: 20,
              child: Image(
                image: AssetImage("images/menu.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
