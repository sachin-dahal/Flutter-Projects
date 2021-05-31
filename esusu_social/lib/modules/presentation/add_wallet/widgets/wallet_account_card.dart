import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletAccountCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final bool isButton;

  WalletAccountCard({
    @required this.title,
    @required this.subtitle,
    this.buttonText,
    this.isButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.grey[500],
              ),
              SizedBox(width: 15.0),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor)),
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: kTextColor1)),
                  ),
                ],
              ),
            ],
          ),
          isButton
              ? ConstrainedBox(
                  constraints:
                      BoxConstraints.tightFor(height: 30.0, width: 70.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0))),
                    child: Text(buttonText,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 14.0,
                          color: kTextColor3,
                          fontWeight: FontWeight.w500,
                        ))),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
