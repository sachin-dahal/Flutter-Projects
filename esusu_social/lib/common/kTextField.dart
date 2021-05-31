import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscure;
  final bool isBgColor;
  final Widget prefix;
  final Widget suffix;
  final EdgeInsets contentPadding;
  final bool readOnly;

  KTextField({
    this.controller,
    @required this.hintText,
    this.obscure = false,
    this.isBgColor = false,
    this.prefix,
    this.suffix,
    this.contentPadding,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      readOnly: readOnly,
      enabled: !readOnly,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
              color: isBgColor ? kTextColor3 : kTextColor1,
              fontWeight: FontWeight.w500)),
      decoration: InputDecoration(
        prefixIcon: prefix,
        prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
        suffixIcon: suffix,
        suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: isBgColor
                    ? kTextColor3.withOpacity(0.5)
                    : kTextColor1.withOpacity(0.5),
                fontSize: 15.0,
                fontWeight: FontWeight.w500)),
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.fromLTRB(12, 8, 12, 8),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: isBgColor ? kTextColor3 : kPrimaryColor.withOpacity(0.7),
                width: 2.0)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[400], width: 1.5)),
      ),
    );
  }
}
