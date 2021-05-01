import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utility/colors.dart';

class BankCard extends StatelessWidget {
  final String title;
  final String cardImgUrl;
  final String imgUrl;

  const BankCard({
    Key key,
    @required this.title,
    @required this.cardImgUrl,
    this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBgColor2,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 14.0,
                child: Image(
                  image: AssetImage(cardImgUrl),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                title,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text("ADDITIONAL FEE",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 11.0))),
              Text("NONE",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 12.0,
                    color: kPrimaryColor,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                  ))),
            ],
          ),
          Container(
              height: 40.0,
              child: Image(
                  image: AssetImage(imgUrl ?? "images/tick_not_done.png")))
        ],
      ),
    );
  }
}
