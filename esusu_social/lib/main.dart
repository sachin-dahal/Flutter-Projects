import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'modules/presentation/login/view/login_page.dart';

void main() => runApp(ESusuSocial());

class ESusuSocial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "eSuSuSocial",
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor1),
      home: LoginPage(),
    );
  }
}
