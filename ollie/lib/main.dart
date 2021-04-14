import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ollie/features/screens/splashpage/splashpage.dart';

import 'features/screens/homepage/homepage.dart';

void main() => runApp(Ollie());

class Ollie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Ollie",
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
