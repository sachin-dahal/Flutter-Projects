import 'package:check_stack/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              height: 150.0,
              color: kPrimaryColor,
              padding: EdgeInsets.only(top: 10.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 35,
                    foregroundImage: AssetImage("images/person1.png"),
                  ),
                  SizedBox(width: 15.0),
                  _buildUserDetailsPanel()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserDetailsPanel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "John Calvin",
          style: TextStyle(
            color: kTextColor1,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.4,
          ),
        ),
        SizedBox(height: 6.0),
        Text(
          "+9779876543210",
          style: TextStyle(
            color: kTextColor1,
            fontSize: 12.0,
            letterSpacing: 0.4,
          ),
        ),
      ],
    );
  }
}
