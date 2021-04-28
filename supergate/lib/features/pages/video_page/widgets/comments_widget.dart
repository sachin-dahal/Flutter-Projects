import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supergreat/theme/colors.dart';

class CommentWidget extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String comment;

  CommentWidget({
    @required this.imgUrl,
    @required this.name,
    @required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imgUrl),
            radius: 25.0,
          ),
          SizedBox(width: 25.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: kTextColor1,
                          fontWeight: FontWeight.w700,
                          fontSize: 15.0),
                    ),
                  ),
                  SizedBox(width: 6.0),
                  Text(
                    comment,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: kTextColor1,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 5.0),
              Text(
                "Reply",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: kTextLinkColor2,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
