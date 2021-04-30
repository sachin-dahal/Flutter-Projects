import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utility/colors.dart';

class ContainerTF extends StatelessWidget {
  final TextEditingController controller;
  final bool readOnly;

  ContainerTF({
    this.controller,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
          color: kBgColor2,
          border: Border(
              bottom: BorderSide(
            color: Colors.black54,
          ))),
      child: TextField(
        readOnly: readOnly,
        controller: controller,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        )),
        decoration: InputDecoration(
          // hintText: "Rias Nawel Arit",
          // hintStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 13.0)),
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          enabled: true,
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          isDense: true,
        ),
      ),
    );
  }
}
