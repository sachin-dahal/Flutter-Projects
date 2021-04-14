import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:ollie/features/screens/homepage/homepage.dart';
import 'package:ollie/features/screens/sound_library/sound_library.dart';
import 'package:ollie/features/screens/stats/stats_page.dart';
import 'package:ollie/features/widgets/drawer_item_widget.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.65,
      child: Drawer(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background.png'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        FeatherIcons.x,
                        size: 35,
                      ),
                      onPressed: () {}),
                  Image(image: AssetImage("images/ollie.png"), height: 45.0),
                ],
              ),
              SizedBox(height: 30.0),
              DrawerItem(
                  onPressed: () {
                    Get.back();
                    Get.to(SoundLibrary(), transition: Transition.rightToLeft);
                  },
                  title: "SOUND LIBRARY"),
              SizedBox(height: 10.0),
              DrawerItem(onPressed: () {}, title: "SETTINGS"),
              SizedBox(height: 10.0),
              DrawerItem(
                  onPressed: () {
                    Get.back();
                    Get.to(Statspage());
                  },
                  title: "STATS"),
              SizedBox(height: 10.0),
              DrawerItem(
                  onPressed: () {
                    Get.back();
                    Get.to(Homepage());
                  },
                  title: "SLEEP TRAINER\nASSISTANT"),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
