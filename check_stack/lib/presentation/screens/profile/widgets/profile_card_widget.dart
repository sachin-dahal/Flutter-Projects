import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utility/colors.dart';

class ProfilecardWidget extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String cardNum;
  final String amount;

  ProfilecardWidget({
    @required this.imgUrl,
    @required this.title,
    @required this.cardNum,
    @required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
          color: kBgColor2, borderRadius: BorderRadius.circular(5.0)),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 16.0,
                child: Image(
                  image: AssetImage(imgUrl),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                height: 20.0,
                child: Image(
                  image: AssetImage("images/delete.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0,
                  ),
                ),
              ),
              Text("BALANCE",
                  style:
                      GoogleFonts.poppins(textStyle: TextStyle(fontSize: 11.0)))
            ],
          ),
          SizedBox(height: 4.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(cardNum,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 11.0))),
              Text(
                "\$$amount",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
