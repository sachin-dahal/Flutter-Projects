import 'package:check_stack/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscure;
  final Widget suffixIcon;
  final Function onChanged;
  final TextInputType keyboardType;

  KTextField({
    this.controller,
    @required this.hintText,
    this.obscure = false,
    this.suffixIcon,
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
          hintStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 13.0)),
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor)),
          isDense: true,
          suffixIcon: suffixIcon,
          suffixIconConstraints: BoxConstraints.tightFor(height: 20.0)),
      obscureText: obscure,
      onChanged: onChanged ?? (val) {},
      keyboardType: keyboardType,
    );
  }
}
