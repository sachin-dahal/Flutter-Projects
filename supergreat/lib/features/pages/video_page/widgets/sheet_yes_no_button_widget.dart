import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supergreat/theme/colors.dart';

class YesNoButtonWidget extends StatelessWidget {
  final String text;
  final Function onPressed;

  YesNoButtonWidget({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 70.0, height: 30.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kButtonColor1,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: kTextColor2,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
