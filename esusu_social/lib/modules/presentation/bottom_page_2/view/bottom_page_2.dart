import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';

class BottomPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: Center(
            child: Text(
          "Bottom Page 2",
          style: TextStyle(color: isDarkModeON ? Colors.white : Colors.black),
        )),
      ),
    );
  }
}
