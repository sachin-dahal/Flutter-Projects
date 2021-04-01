import 'package:flutter/material.dart';

class UserChoiceWidget extends StatelessWidget {
  final Color outColor;
  final Color inColor;
  final Icon icon;

  UserChoiceWidget({
    @required this.outColor,
    @required this.inColor,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 80.0,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: outColor,
          borderRadius: BorderRadius.circular(60.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(1, 2),
              blurRadius: 5.0,
            )
          ]),
      child: Container(
        height: 70.0,
        width: 70.0,
        decoration: BoxDecoration(
          color: inColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: icon,
      ),
    );
  }
}
