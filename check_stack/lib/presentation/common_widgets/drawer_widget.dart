import 'package:check_stack/common/kWhiteTextfield.dart';
import 'package:check_stack/presentation/common_widgets/drawer_tile_widget.dart';
import 'package:check_stack/presentation/screens/history/view/history_page.dart';
import 'package:check_stack/presentation/screens/profile/view/profile_page.dart';
import 'package:check_stack/presentation/screens/signup/view/signup_page.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utility/colors.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  bool _isOn = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290.0,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Drawer(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              SizedBox(height: 25.0),
              GestureDetector(
                onTap: () {
                  Get.back();
                  Get.to(ProfilePage());
                },
                child: _buildTopProfilePanel(),
              ),
              SizedBox(height: 30.0),
              DrawerTile(
                title: "Change Password",
                onPressed: () {
                  Get.bottomSheet(
                    _buildChangePasswordSheet(),
                  );
                },
                color: Colors.red,
                icon: Icons.security,
              ),
              SizedBox(height: 15.0),
              DrawerTile(
                title: "History",
                onPressed: () {
                  Get.back();
                  Get.to(HistoryPage());
                },
                color: Colors.black,
                icon: Icons.history,
              ),
              SizedBox(height: 15.0),
              DrawerTile(
                title: "Terms and Conditions",
                onPressed: () {},
                color: Colors.green,
                icon: FeatherIcons.fileText,
              ),
              SizedBox(height: 15.0),
              DrawerTile(
                title: "Privacy Policy",
                onPressed: () {},
                color: Colors.yellow[800],
                icon: Icons.privacy_tip,
              ),
              SizedBox(height: 15.0),
              DrawerTile(
                title: "Notifications",
                onPressed: () {},
                color: Colors.blue,
                icon: FeatherIcons.bell,
                trailing: Transform.scale(
                    scale: 0.8,
                    child: CupertinoSwitch(
                      value: _isOn,
                      onChanged: toggleSwitch,
                    )),
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () => Get.to(SignupPage()),
          child: Container(
            height: 65.0,
            color: kPrimaryColor,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Transform.rotate(
                //     angle: 180 * math.pi / 180,
                //     child: Icon(
                //       FeatherIcons.logOut,
                //       color: kBgColor1,
                //       size: 22.0,
                //     )),
                SizedBox(width: 20.0),
                Text(
                  "Log Out",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16.0,
                      color: kBgColor1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Icon(
                  FeatherIcons.logOut,
                  color: kBgColor1,
                  size: 22.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void toggleSwitch(val) {
    setState(() {
      _isOn = val;
    });
  }

  Row _buildTopProfilePanel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: Stack(
            children: [
              Container(width: 80.0),
              Container(
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
                  radius: 30.0,
                  backgroundImage: AssetImage("images/person1.png"),
                ),
              ),
              Positioned(
                right: 18,
                bottom: 0,
                child: Container(
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
                  child: Icon(
                    Icons.edit,
                    size: 15.0,
                    color: kTextColor1,
                  ),
                ),
              )
            ],
          ),
        ),
        _buildUserDetailsPanel(),
      ],
    );
  }

  Widget _buildUserDetailsPanel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "RIAS",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            color: kTextColor1,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.4,
          )),
        ),
        SizedBox(height: 6.0),
        Text("rias.nawel@gmail.com",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: kTextColor1,
                fontSize: 12.0,
                letterSpacing: 0.4,
              ),
            )),
      ],
    );
  }

  Widget _buildChangePasswordSheet() {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          height: 300.0,
          color: Colors.grey[300],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CHANGE PASSWORD",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      "Fill up the credentials",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    KWhiteTextField(hintText: "Old Password"),
                    SizedBox(height: 12.0),
                    KWhiteTextField(hintText: "New Password"),
                    SizedBox(height: 12.0),
                    KWhiteTextField(hintText: "Confirm Password"),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(
                color: kPrimaryColor,
                height: 1,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20.0),
                    Expanded(
                      child: Center(
                        child: TextButton(
                          onPressed: () => Get.back(),
                          child: Text(
                            "Cancel",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: kTextColor1,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: VerticalDivider(color: kPrimaryColor)),
                    Expanded(
                      child: Center(
                        child: TextButton(
                          onPressed: () => Get.back(),
                          child: Text(
                            "Save",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: kTextColor1,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
