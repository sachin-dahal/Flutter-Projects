import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionsCardWidget extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String status;
  final String amount;
  final String date;
  final Function onPressed;

  TransactionsCardWidget({
    @required this.imgUrl,
    @required this.title,
    @required this.status,
    @required this.amount,
    @required this.date,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.white.withOpacity(0),
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 45.0,
                  child: Image(
                    image: AssetImage(imgUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10.0),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: isDarkModeON ? kTextColor3 : kTextColor1)),
                    ),
                    Text(
                      status,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              color: isDarkModeON
                                  ? kTertiaryColor
                                  : kPrimaryColor)),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  amount,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: isDarkModeON ? kTextColor3 : kTextColor1)),
                ),
                Text(
                  date,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                          color:
                              isDarkModeON ? kTertiaryColor : kPrimaryColor)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
