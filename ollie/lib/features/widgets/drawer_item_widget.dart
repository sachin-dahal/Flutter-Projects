import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerItem extends StatelessWidget {
  final Function onPressed;
  final String title;

  DrawerItem({
    @required this.onPressed,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.minus,
              size: 20,
              color: Colors.brown[200],
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.brown[200],
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
