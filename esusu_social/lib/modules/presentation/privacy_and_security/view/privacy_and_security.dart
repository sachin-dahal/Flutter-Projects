import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/account_page/widgets/acc_button_widget.dart';
import 'package:esusu_social/modules/presentation/change_password/view/change_password.dart';
import 'package:esusu_social/modules/presentation/privacy_and_security/controller/privacy_and_security_controller.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyAndSecurityPage extends StatelessWidget {
  final PrivacyAndSecurityController _privacySecurityController =
      Get.put(PrivacyAndSecurityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: Column(
          children: [
            KAppBar(text: "Privacy and Security"),
            SizedBox(height: 20.0),
            AccButton(
              text: "Change Password",
              onPressed: () => Get.to(ChangePasswordPage()),
            ),
            GetBuilder<PrivacyAndSecurityController>(
                builder: (_privacySecurityController) {
              return Container(
                padding: EdgeInsets.only(left: 20.0, right: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Biometrics for Login",
                          style: kLabelStyle.copyWith(
                              color: isDarkModeON ? kTextColor3 : kTextColor1),
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                            activeColor: kPrimaryColor,
                            value: _privacySecurityController.biometricsLogin,
                            onChanged:
                                _privacySecurityController.changeBioLogin,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Biometrics for Transactions",
                          style: kLabelStyle.copyWith(
                              color: isDarkModeON ? kTextColor3 : kTextColor1),
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                            activeColor: kPrimaryColor,
                            value: _privacySecurityController
                                .biometricsTransactions,
                            onChanged: _privacySecurityController
                                .changeBioTransactions,
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
