import 'package:check_stack/common/kBottomBarButton.dart';
import 'package:check_stack/presentation/common_widgets/drawer_widget.dart';
import 'package:check_stack/presentation/screens/homepage/controller/homepage_controller.dart';
import 'package:check_stack/presentation/screens/homepage/view/timing_homepage.dart';
import 'package:check_stack/presentation/screens/homepage/widgets/cheque_image_widget.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChequePage extends StatelessWidget {
  final HomepageController _homepageController = Get.put(HomepageController());

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _key,
      endDrawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTopNavPanel(),
            SizedBox(height: 15.0),
            Text("Snap a picture of your Cheque", style: GoogleFonts.poppins()),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  ChequeImage(
                    text: "Front Side",
                    imgUrl: "images/cheque_front.png",
                    imgName: "Front Side.jpeg",
                  ),
                  SizedBox(height: 20.0),
                  ChequeImage(
                    text: "Back Side",
                    imgUrl: "images/cheque_back.png",
                    imgName: "Back Side.jpeg",
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: KBottomBarButton(
        text: "Next",
        onPressed: () => Get.to(TimingPage()),
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
          Row(
            children: [
              SizedBox(width: 5.0),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(80.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, -2),
                            blurRadius: 5.0,
                          )
                        ]),
                    child: CircleAvatar(
                      radius: 18.0,
                      backgroundImage: AssetImage("images/person1.png"),
                    ),
                  ),
                  Positioned(
                    right: 0.0,
                    bottom: 0.0,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(80.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, -2),
                              blurRadius: 5.0,
                            )
                          ]),
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(width: 10.0),
              Text(
                "Hi, Rias! Good Morning.",
                style: GoogleFonts.poppins(),
              )
            ],
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
