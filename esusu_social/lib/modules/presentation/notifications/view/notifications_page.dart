import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/notifications/controller/notification_page_controller.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsPage extends StatelessWidget {
  final NotificationsPageController _notificationsPageController =
      Get.put(NotificationsPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            KAppBar(text: "Notifications"),
            SizedBox(height: 20.0),
            GetBuilder<NotificationsPageController>(
                builder: (_notificationsPageController) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Option 1", style: kLabelStyle),
                        Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                            activeColor: kPrimaryColor,
                            value: _notificationsPageController.option1,
                            onChanged:
                                _notificationsPageController.changeOption1,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Option 2", style: kLabelStyle),
                        Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                            activeColor: kPrimaryColor,
                            value: _notificationsPageController.option2,
                            onChanged:
                                _notificationsPageController.changeOption2,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Option 3", style: kLabelStyle),
                        Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                            activeColor: kPrimaryColor,
                            value: _notificationsPageController.option3,
                            onChanged:
                                _notificationsPageController.changeOption3,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
