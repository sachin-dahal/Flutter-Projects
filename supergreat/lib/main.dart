import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supergreat/features/pages/homepage/views/homepage.dart';
import 'package:supergreat/theme/colors.dart';

void main() => runApp(SuperGreat());

class SuperGreat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Super Great",
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor1,
          primaryColor: kPrimaryColor,
          buttonColor: kButtonColor1),
      home: HomePage(),
    );
  }
}
