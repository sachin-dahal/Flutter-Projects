import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kButton.dart';
import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';

class SetBiometricsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            KAppBar(text: "Set Biometrics Page"),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      height: 280.0,
                      width: 300.0,
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          border: Border.all(
                              color: kPrimaryColor.withOpacity(0.3))),
                      child: Container(
                        height: 180.0,
                        width: 200.0,
                        padding: EdgeInsets.all(30.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200.0),
                            border: Border.all(
                                color: kPrimaryColor.withOpacity(0.5))),
                        child: Container(
                          height: 120.0,
                          width: 140.0,
                          padding: EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200.0),
                            color: kPrimaryColor,
                            boxShadow: [
                              BoxShadow(
                                  color: kPrimaryColor,
                                  offset: Offset(0, 0),
                                  blurRadius: 10.0),
                            ],
                          ),
                          child: Image(
                              image: AssetImage("images/fingerprint.png")),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            KButton(text: 'Save', onPressed: () {}),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
