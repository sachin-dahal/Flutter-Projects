import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/common/kButton.dart';
import 'package:esusu_social/common/kTextField.dart';
import 'package:esusu_social/common/styles.dart';
import 'package:esusu_social/modules/presentation/personal_details/controller/personal_details_controller.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalDetailsPage extends StatelessWidget {
  final PersonalDetailsController _personalDetailsController =
      Get.put(PersonalDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkModeON ? kDarkBackgroundColor : kBackgroundColor1,
      body: Container(
        child: Column(
          children: [
            KAppBar(text: "Personal Details"),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                children: [
                  _buildCenterImage(),
                  SizedBox(height: 10.0),
                  Text("FULL NAME",
                      style: kLinkLabelStyle.copyWith(
                          color:
                              isDarkModeON ? kTertiaryColor : kPrimaryColor)),
                  SizedBox(height: 5.0),
                  KTextField(
                      isBgColor: isDarkModeON,
                      hintText: "",
                      controller: _personalDetailsController.nameController),
                  SizedBox(height: 25.0),
                  Text("DATE OF BIRTH",
                      style: kLinkLabelStyle.copyWith(
                          color:
                              isDarkModeON ? kTertiaryColor : kPrimaryColor)),
                  SizedBox(height: 5.0),
                  KTextField(
                      isBgColor: isDarkModeON,
                      hintText: "",
                      controller: _personalDetailsController.dobController),
                  SizedBox(height: 25.0),
                  Text("GENDER",
                      style: kLinkLabelStyle.copyWith(
                          color:
                              isDarkModeON ? kTertiaryColor : kPrimaryColor)),
                  _buildDropDown(),
                  SizedBox(height: 25.0),
                  Text("EMAIL",
                      style: kLinkLabelStyle.copyWith(
                          color:
                              isDarkModeON ? kTertiaryColor : kPrimaryColor)),
                  SizedBox(height: 5.0),
                  KTextField(
                      isBgColor: isDarkModeON,
                      hintText: "",
                      controller: _personalDetailsController.emailController),
                  SizedBox(height: 50.0),
                  KButton(text: "Update", onPressed: () {})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropDown() {
    return Container(
      decoration: BoxDecoration(
        color: isDarkModeON ? kDarkBackgroundColor : Color(0xFFF0F2F4),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: GetBuilder<PersonalDetailsController>(
          builder: (_personalDetailsController) {
        return DropdownButton<String>(
          isExpanded: true,
          underline: Divider(
            color: Colors.grey[400],
            thickness: 1.5,
            height: 0.0,
          ),
          focusColor: isDarkModeON ? kDarkBackgroundColor : Color(0xFFF0F2F4),
          value: _personalDetailsController.selectedItem,
          icon: Icon(FeatherIcons.chevronDown),
          dropdownColor: isDarkModeON ? kDarkBackgroundColor : kTextColor3,
          items: _personalDetailsController.genderList.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        color: isDarkModeON ? kTextColor3 : kTextColor1,
                        fontWeight: FontWeight.w500)),
              ),
            );
          }).toList(),
          onChanged: _personalDetailsController.changeIndex,
        );
      }),
    );
  }

  Widget _buildCenterImage() {
    return Center(
      child: Container(
        height: 170.0,
        width: 170.0,
        padding: EdgeInsets.only(left: 15.0),
        child: Stack(
          children: [
            Container(),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Container(
                height: 140.0,
                width: 140.0,
                child: Image(
                  image: AssetImage("images/user.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 6,
              child: CircleAvatar(
                radius: 17,
                backgroundColor: kTextColor3,
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: kPrimaryColor,
                  child: Icon(
                    Icons.edit,
                    size: 18.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
