import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utility/colors.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color color;
  final IconData icon;
  final Widget trailing;

  DrawerTile(
      {@required this.title,
      @required this.onPressed,
      @required this.color,
      @required this.icon,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: ListTile(
        tileColor: kBgColor1,
        onTap: onPressed,
        contentPadding:
            EdgeInsets.only(left: 10.0, right: 5.0, top: 5.0, bottom: 5.0),
        leading: Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(5.0)),
          child: Icon(
            icon,
            color: Colors.white,
            size: 22.0,
          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(
              textStyle:
                  TextStyle(fontSize: 13.0, fontWeight: FontWeight.w600)),
        ),
        trailing: trailing ??
            Icon(
              Icons.chevron_right,
              color: kPrimaryColor,
              size: 30,
            ),
      ),
    );
  }
}
