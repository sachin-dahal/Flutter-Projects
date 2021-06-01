import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteFriendsPage extends StatelessWidget {
  final height = Get.height;
  final width = Get.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: Stack(
          children: [
            Container(),
            _buildAppBarPanel(),
            Positioned(
              top: height * 0.2,
              left: 35.0,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height * 0.45,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                        color: isDarkModeON
                            ? kPrimaryColor.withOpacity(0.6)
                            : kTextColor3,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: kShadowColor.withOpacity(0.3),
                              offset: Offset(0, 0),
                              blurRadius: 3.0)
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30.0),
                          Container(
                            height: height * 0.2,
                            width: width * 0.5,
                            child: Image(
                              image: AssetImage("images/invite_friends.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: KTextField(
                                isBgColor: isDarkModeON, hintText: "Email..."),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 50.0),
                    Text("Share",
                        style: kAuthTitleTextStyle.copyWith(
                            fontSize: 20.0,
                            color: isDarkModeON ? kTextColor3 : kTextColor1)),
                    SizedBox(height: 10.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildSocialButton("images/facebook.png"),
                        SizedBox(width: 25.0),
                        _buildSocialButton("images/google.png"),
                        SizedBox(width: 25.0),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6.0),
                          child: Container(
                            height: 36.0,
                            width: 36.0,
                            color: Color(0xFF50ABF1),
                            padding: EdgeInsets.all(5.0),
                            child: Image(
                              image: AssetImage("images/twitter.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(width: 25.0),
                        _buildSocialButton("images/instagram.png"),
                        SizedBox(width: 25.0),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6.0),
                          child: Container(
                            height: 36.0,
                            width: 36.0,
                            color: Color(0xFF1BD741),
                            padding: EdgeInsets.all(5.0),
                            child: Image(
                              image: AssetImage("images/whatsapp.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: height * 0.31,
              left: width * 0.4,
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(FeatherIcons.arrowRight),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialButton(String imgUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6.0),
      child: Container(
        height: 36.0,
        width: 36.0,
        child: Image(
          image: AssetImage(imgUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildAppBarPanel() {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      height: height * 0.3,
      width: width,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 18.0,
            child: Image(
              image: AssetImage("images/menu.png"),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Invite Friends",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: kTextColor3,
                  fontSize: 17.0),
            ),
          ),
          Icon(
            FontAwesomeIcons.solidBell,
            color: kTextColor3,
            size: 22.0,
          )
        ],
      ),
    );
  }
}
