import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BillCard extends StatelessWidget {
  final String imgUrl;
  final String text;
  final Function onPressed;

  BillCard({
    @required this.imgUrl,
    @required this.text,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 80.0,
        width: Get.width * 0.4,
        decoration: BoxDecoration(
            color: isDarkModeON ? kPrimaryColor : kTextColor3,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: kShadowColor.withOpacity(0.3),
                offset: Offset(0, 0),
                blurRadius: 4.0,
              )
            ]),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 25.0,
                child: Image(
                  color: isDarkModeON ? kTextColor3 : kPrimaryColor,
                  image: AssetImage(imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                text,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                  color: isDarkModeON ? kTextColor3 : kPrimaryColor,
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
