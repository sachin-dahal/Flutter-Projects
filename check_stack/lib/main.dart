import 'package:check_stack/presentation/screens/splash_screen/view/splash_screen.dart';
import 'package:check_stack/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() => runApp(CheckStack());

class CheckStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Check Stack",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor2,
        canvasColor: Colors.grey[200],
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: kPrimaryColor,
        ),
        iconTheme: IconThemeData(
          color: kPrimaryColor,
        ),
      ),
      home: SplashPage(),
    );
  }
}
