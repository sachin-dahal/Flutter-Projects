import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supergreat/theme/colors.dart';

class ProfileVideoWidget extends StatelessWidget {
  final String imgUrl;
  final String imgUrlBrand;
  final String brandTitle;
  final String brandSubtitle;

  ProfileVideoWidget({
    this.imgUrl,
    this.imgUrlBrand,
    this.brandTitle,
    this.brandSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      width: 160.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 240,
              width: 180.0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                child: Image(
                  image: AssetImage(imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 70.0,
            right: 60.0,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image(
                  image: AssetImage(imgUrlBrand),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20.0,
            child: Column(
              children: [
                Center(
                  child: Text(brandTitle,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: kTextColor3))),
                ),
                SizedBox(height: 2.0),
                Text(brandSubtitle,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 12.0))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
