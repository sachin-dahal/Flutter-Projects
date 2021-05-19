import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  KTextField({
    this.controller,
    @required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: GoogleFonts.inter(textStyle: TextStyle(color: kTextColor1)),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
            textStyle: TextStyle(
                color: kTextColor1.withOpacity(0.5),
                fontSize: 16.0,
                fontWeight: FontWeight.w500)),
        isDense: true,
        focusedBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: kPrimaryColor.withOpacity(0.7), width: 2.0)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[400], width: 1.5)),
      ),
    );
  }
}
