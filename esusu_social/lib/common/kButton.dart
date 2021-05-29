import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Function onPressed;

  KButton({
    @required this.text,
    @required this.onPressed,
    this.color = kPrimaryColor,
    this.textColor = kTextColor3,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: 45.0, width: 260.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
        child: Text(text,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 15.0,
              color: textColor,
              fontWeight: FontWeight.w500,
            ))),
      ),
    );
  }
}
