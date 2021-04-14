import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ollie/features/screens/homepage/homepage.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () => Get.offAll(Homepage()));

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Image(
            image: AssetImage("images/splash_img.png"),
          ),
        ),
      ),
    );
  }
}
