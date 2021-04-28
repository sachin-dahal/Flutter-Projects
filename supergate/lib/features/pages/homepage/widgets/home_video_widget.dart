import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supergreat/theme/colors.dart';

class HomeVideoWidget extends StatelessWidget {
  final String name;
  final String imgUrl;
  final String heroTag;
  final String imgUrlBrand;
  final String brandTitle;
  final String brandSubtitle;

  HomeVideoWidget({
    this.name,
    this.imgUrl,
    this.heroTag,
    this.imgUrlBrand,
    this.brandTitle,
    this.brandSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340.0,
      width: 180.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Container(),
          Container(
            height: 240,
            width: 180.0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Hero(
                tag: heroTag,
                child: Image(
                  image: AssetImage(imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10.0,
            right: 30.0,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 16.0,
                  backgroundImage: AssetImage(imgUrl),
                ),
                SizedBox(width: 10.0),
                Text(
                  name,
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: kTextColor2,
                  )),
                ),
              ],
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
            right: 2.0,
            child: Column(
              children: [
                Text(brandTitle,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: kTextColor3))),
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
