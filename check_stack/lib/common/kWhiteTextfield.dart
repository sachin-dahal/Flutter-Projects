import 'package:check_stack/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KWhiteTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscure;
  final Function onChanged;
  final TextInputType keyboardType;

  KWhiteTextField({
    this.controller,
    @required this.hintText,
    this.obscure = false,
    this.onChanged,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14.0)),
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 14.0, color: kTextColor2)),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
          filled: true,
          fillColor: kBgColor1,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
      obscureText: obscure,
      onChanged: onChanged ?? (val) {},
      keyboardType: keyboardType,
    );
  }
}
