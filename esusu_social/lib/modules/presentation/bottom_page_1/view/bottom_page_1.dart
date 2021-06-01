import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';

class BottomPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: Center(
            child: Text(
          "Bottom Page 1",
          style: TextStyle(color: isDarkModeON ? Colors.white : Colors.black),
        )),
      ),
    );
  }
}
