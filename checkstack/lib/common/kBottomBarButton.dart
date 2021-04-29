import 'package:check_stack/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class KBottomBarButton extends StatelessWidget {
  final bool isEnabled;
  final String text;
  final Function onPressed;

  KBottomBarButton({
    this.isEnabled = true,
    @required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? onPressed : () {},
      child: Container(
        height: 70.0,
        color: isEnabled ? kPrimaryColor : kPrimaryColor.withOpacity(0.5),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 15.0,
                  color: kBgColor1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Icon(FeatherIcons.arrowRight, color: kBgColor1),
          ],
        ),
      ),
    );
  }
}
