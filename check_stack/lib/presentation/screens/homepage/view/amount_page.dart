import 'package:check_stack/common/kBottomBarButton.dart';
import 'package:check_stack/presentation/screens/homepage/controller/homepage_controller.dart';
import 'package:check_stack/presentation/screens/homepage/view/confirm_page.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:check_stack/utility/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../common/kTextfield.dart';
import '../../../../utility/colors.dart';
import '../../../common_widgets/drawer_widget.dart';

class AmountPage extends StatelessWidget {
  final HomepageController _homepageController = Get.find();

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      endDrawer: MainDrawer(),
      body: ScrollConfiguration(
        behavior: ScrollBehavior()
          ..buildViewportChrome(context, null, AxisDirection.down),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTopNavPanel(),
              SizedBox(height: 10.0),
              Text("FUNDS REMAINING",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 12.0))),
              Text("\$117.15", style: kTitleTextStyle2),
              SizedBox(height: 20.0),
              Container(
                color: kBgColor1,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Choose when you want your money",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.w600))),
                    SizedBox(height: 20.0),
                    _buildCardMiniContainer(),
                    SizedBox(height: 40.0),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                color: kBgColor2,
                                border: Border(
                                    bottom: BorderSide(
                                  color: Colors.black54,
                                ))),
                            child: Center(
                                child: Text(
                              "\$",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.0,
                                ),
                              ),
                            )),
                          ),
                          SizedBox(width: 20.0),
                          Flexible(
                              child: Container(
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                      color: kBgColor2,
                                      border: Border(
                                          bottom: BorderSide(
                                        color: Colors.black54,
                                      ))),
                                  child: KTextField(
                                    hintText: " Enter Amount",
                                    controller:
                                        _homepageController.amountController,
                                    onChanged: _homepageController.onChg,
                                    keyboardType: TextInputType.number,
                                  )))
                        ],
                      ),
                    ),
                    SizedBox(height: 40.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          GetBuilder<HomepageController>(builder: (_homepageController) {
        return KBottomBarButton(
          text: "Next",
          isEnabled: _homepageController.isEnabled,
          onPressed: () => Get.to(ConfirmPage()),
          // onPressed: () => Get.to(TimingPage()),
        );
      }),
    );
  }

  Widget _buildCardMiniContainer() {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(color: kBgColor2),
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "My Debit Card",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(fontWeight: FontWeight.w600)),
          ),
          Container(
            height: 35,
            width: 40,
            child: Image(
              image: AssetImage("images/visa.png"),
            ),
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
            'AMOUNT',
            style: kBarTextStyle,
          ),
          TextButton(
            onPressed: () => _key.currentState.openEndDrawer(),
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
