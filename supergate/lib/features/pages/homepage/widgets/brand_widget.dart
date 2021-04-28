import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supergreat/theme/colors.dart';

class BrandWidget extends StatelessWidget {
  final String imgUrl;
  final String videos;

  BrandWidget({
    @required this.imgUrl,
    @required this.videos,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      width: 160.0,
      decoration: BoxDecoration(
          color: kSecondaryColor, borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 140.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 0),
                      blurRadius: 10.0,
                    )
                  ]),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(image: AssetImage(imgUrl))),
            ),
          ),
          SizedBox(height: 10.0),
          Text(videos, style: GoogleFonts.poppins()),
        ],
      ),
    );
  }
}
