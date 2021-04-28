import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supergreat/theme/colors.dart';

class SheetButtonWidget extends StatelessWidget {
  final String text;
  final Function onPressed;

  SheetButtonWidget({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 110.0, height: 40.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kBackgroundColor2,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.grey[300], width: 2),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: kTextColor1,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
