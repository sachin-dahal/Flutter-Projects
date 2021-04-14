import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KidInfoCard extends StatelessWidget {
  final String text;
  final Color color;

  KidInfoCard({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(25.0)),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      width: Get.width * 0.8,
      height: 50.0,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18.0, color: Colors.white, letterSpacing: 0.8),
        ),
      ),
    );
  }
}
