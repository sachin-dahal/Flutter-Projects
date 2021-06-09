import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletTransferButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function onPressed;

  WalletTransferButton({
    @required this.text,
    @required this.isSelected,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50.0,
        width: Get.width * 0.40,
        decoration: BoxDecoration(
          color: isSelected ? kPrimaryColor : kTextColor3,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: kShadowColor.withOpacity(0.2),
                offset: Offset(0, 0),
                blurRadius: 3.0),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: isSelected ? kTextColor3 : kTextColor1)),
          ),
        ),
      ),
    );
  }
}
