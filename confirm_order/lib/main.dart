import 'package:flutter/material.dart';
import 'order_page.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(buttonColor: Color(0xFF4CBB17)),
      debugShowCheckedModeBanner: false,
      home: OrderPage(),
    );
  }
}
