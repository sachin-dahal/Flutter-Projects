import 'package:check_stack/utility/colors.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChequeImage extends StatefulWidget {
  final String text;
  final String imgUrl;
  final String imgName;

  ChequeImage({
    @required this.text,
    @required this.imgUrl,
    @required this.imgName,
  });

  @override
  _ChequeImageState createState() => _ChequeImageState();
}

class _ChequeImageState extends State<ChequeImage> {
  bool isImage = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: kBgColor1,
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              widget.text,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
              "File should be png/jpeg/webp",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: isImage
                  ? Container(
                      height: 180.0,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            color: kTeritaryColor,
                            height: 140.0,
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 15.0),
                              child: Image(
                                image: AssetImage(widget.imgUrl),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(image: AssetImage("images/image.png")),
                                  SizedBox(width: 10.0),
                                  Text(widget.imgName,
                                      style: GoogleFonts.poppins())
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isImage = false;
                                  });
                                },
                                child: Container(
                                  height: 20.0,
                                  child: Image(
                                    image: AssetImage("images/delete.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : FDottedLine(
                      color: kPrimaryColor.withOpacity(0.4),
                      strokeWidth: 1.0,
                      dottedLength: 10.0,
                      space: 2.0,
                      child: Container(
                        height: 180.0,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isImage = true;
                            });
                          },
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                    image:
                                        AssetImage("images/upload_image.png"),
                                    height: 40.0),
                                SizedBox(height: 20.0),
                                Text("Upload the Image",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 15.0,
                                        color: kTextColor2,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
