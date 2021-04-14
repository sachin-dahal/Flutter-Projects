import 'package:flutter/material.dart';

class KTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextField(
      cursorColor: Colors.black38,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 15.0),
          isDense: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.0),
              borderSide: BorderSide(color: Colors.black)),
          focusColor: Colors.black,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.0),
              borderSide: BorderSide(color: Colors.black))),
    ));
  }
}
