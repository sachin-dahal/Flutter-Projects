import 'package:esusu_social/common/styles.dart';
import 'package:flutter/material.dart';

class LabelCardWidget extends StatelessWidget {
  final String imgUrl;
  final String text;
  final Color color;
  final double fontSize;
  final Function onPressed;

  LabelCardWidget({
    @required this.imgUrl,
    @required this.text,
    @required this.color,
    @required this.onPressed,
    this.fontSize = 11.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 100.0,
        width: 90.0,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(12.0)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 30.0,
                child: Image(
                  image: AssetImage(imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                text,
                textAlign: TextAlign.center,
                style: kBigLabelStyle.copyWith(
                  color: Colors.white,
                  fontSize: fontSize,
                  letterSpacing: 0.5,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
