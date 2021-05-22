import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class KAppBar extends StatelessWidget {
  final height = Get.height;
  final width = Get.width;
  final String text;

  KAppBar({
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
      height: height * 0.15,
      width: width,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0))),
      child: Row(
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
            text,
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
