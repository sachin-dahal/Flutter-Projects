import 'package:check_stack/common/kBottomBarButton.dart';
import 'package:check_stack/presentation/screens/homepage/controller/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utility/colors.dart';
import '../../../../utility/colors.dart';
import '../../../../utility/colors.dart';
import '../../../common_widgets/drawer_widget.dart';
import 'cheque_homepage.dart';

class SuccessfulPage extends StatelessWidget {
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
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 110.0),
                Container(
                  height: 200.0,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage("images/done.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 25.0),
                Text(
                  "Your money on it's way",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "You wanna do more transactions?",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 12.0,
                      color: kTextColor2,
                    ),
                  ),
                ),
                SizedBox(height: 60.0),
                ConstrainedBox(
                  constraints:
                      BoxConstraints.tightFor(width: 180.0, height: 40.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onPressed: () => Get.offAll(ChequePage()),
                    child: Text(
                      "GO HOME",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
