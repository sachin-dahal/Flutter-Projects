import 'package:flutter/material.dart';
import 'package:supergreat/theme/colors.dart';
import 'package:supergreat/utilities/constants.dart';

class CategoryWidget extends StatelessWidget {
  final String title;
  final bool isSelect;

  CategoryWidget({
    this.title,
    this.isSelect = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: isSelect ? Colors.purple : Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.all(5.0),
        child: Text(
          title,
          style: isSelect ? kFilterSelectedTextStyle : kFilterTextStyle,
        ));
  }
}
