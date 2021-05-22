import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AccButton extends StatelessWidget {
  final width = Get.width;
  final String text;
  final Function onPressed;

  AccButton({
    @required this.text,
    @required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(bottom: 20.0),
        height: 50.0,
        width: width - 40.0,
        padding: EdgeInsets.only(left: 20.0, right: 10.0),
        decoration: BoxDecoration(
          color: kTextColor3,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
                color: kShadowColor.withOpacity(0.2),
                offset: Offset(0, 0),
                blurRadius: 3.0),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kTextColor1,
                    fontSize: 16.0),
              ),
            ),
            Icon(
              FeatherIcons.chevronRight,
              size: 28.0,
              color: kPrimaryColor,
            )
          ],
        ),
      ),
    );
  }
}
