import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supergreat/features/data/brand_dummy_data.dart';
import 'package:supergreat/features/data/profile_video_dummy_data.dart';
import 'package:supergreat/features/pages/homepage/widgets/brand_widget.dart';
import 'package:supergreat/features/pages/profile_page/widgets/profile_video_widget.dart';
import 'package:supergreat/features/pages/profile_page/widgets/user_choice_widget.dart';
import 'package:supergreat/theme/colors.dart';
import 'package:supergreat/utilities/constants.dart';

class ProfilePage extends StatelessWidget {
  final String imgUrl;
  final String name;

  ProfilePage({
    @required this.imgUrl,
    @required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor2,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 40.0),
              color: kBackgroundColor2,
              child: Column(
                children: [
                  _buildTopAppBar(),
                  SizedBox(height: 30.0),
                  _buildProfileImagePanel(),
                  SizedBox(height: 5.0),
                  _buildUserDetailsPanel(),
                  SizedBox(height: 20.0),
                ],
              ),
            ),

            //for tab bar
            _buildTabBar()
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      padding: const EdgeInsets.all(15.0),
      color: kBackgroundColor1,
      height: 600,
      child: ContainedTabBarView(
        tabs: [
          Text('My Videos'),
          Text('My Shelf'),
          Text('Subscription'),
        ],
        tabBarProperties: TabBarProperties(
          height: 45.0,
          position: TabBarPosition.top,
          alignment: TabBarAlignment.center,
          background: Container(
            decoration: BoxDecoration(
              color: kBackgroundColor2,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 0.5,
                  blurRadius: 2,
                  offset: Offset(1, 0),
                ),
              ],
            ),
          ),
          indicatorColor: Colors.transparent,
          labelColor: Colors.black,
          labelStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
          unselectedLabelStyle:
              TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
          outerPadding: EdgeInsets.only(bottom: 20.0),
          unselectedLabelColor: Colors.grey,
        ),
        views: [
          //* MY VIDEOS
          Container(
            color: kBackgroundColor1,
            child: Column(
              children: [
                Text(
                  "86 Videos",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  )),
                ),
                Container(
                  height: 465.0,
                  child: GridView.count(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    primary: false,
                    childAspectRatio: 0.5,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    children: List.generate(profileVideos.length, (index) {
                      return ProfileVideoWidget(
                        imgUrl: profileVideos[index].imgUrl,
                        imgUrlBrand: profileVideos[index].imgUrlBrand,
                        brandTitle: profileVideos[index].brandTitle,
                        brandSubtitle: profileVideos[index].brandSubtitle,
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          //* MY SHELF
          Container(
            color: kBackgroundColor1,
            child: Column(
              children: [
                Text(
                  "My Shelf",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  )),
                ),
                Container(
                  height: 450.0,
                  child: GridView.count(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    primary: false,
                    childAspectRatio: 0.8,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    children: List.generate(brands.length, (index) {
                      return BrandWidget(
                          imgUrl: brands[index].imgUrl,
                          videos: brands[index].videos);
                    }),
                  ),
                ),
              ],
            ),
          ),
          //* SUBSCRIPTIONS
          Container(
            color: kBackgroundColor1,
            child: Center(
              child: Text(
                "SUBSCRIPTIONS",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                )),
              ),
            ),
          )
        ],
        onChange: (index) => print(index),
      ),
    );
  }

  Widget _buildUserDetailsPanel() {
    return Column(
      children: [
        Text(
          name,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        SizedBox(height: 3.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("images/insta.png"),
              height: 30.0,
            ),
            SizedBox(width: 5.0),
            Image(
              image: AssetImage("images/fb.png"),
              height: 40.0,
            ),
          ],
        ),
        // Text(
        //   "https://www.instagram.com/name",
        //   style: GoogleFonts.poppins(
        //     textStyle: TextStyle(color: kTextLinkColor2),
        //   ),
        // ),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UserChoiceWidget(
              outColor: Color(0xFFF5CBAB),
              inColor: Color(0xFFCEAB91),
              icon: Icon(
                FontAwesomeIcons.iCursor,
                color: kTextColor2,
              ),
            ),
            UserChoiceWidget(
              outColor: Color(0xFF914B00),
              inColor: Color(0xFF834400),
              icon: Icon(
                FontAwesomeIcons.eye,
                color: kTextColor2,
              ),
            ),
            UserChoiceWidget(
              outColor: Color(0xFFA35501),
              inColor: Color(0xFF753F04),
              icon: Icon(
                FontAwesomeIcons.gripLinesVertical,
                color: kTextColor2,
              ),
            ),
          ],
        ),
        SizedBox(height: 25.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            UserChoiceWidget(
              outColor: Color(0xFFA35501),
              inColor: Color(0xFF753F04),
              icon: Icon(
                FontAwesomeIcons.gripHorizontal,
                color: kTextColor2,
              ),
            ),
            UserChoiceWidget(
              outColor: Color(0xFFC9C3BE),
              inColor: Color(0xFFEBEBEB),
              icon: Icon(
                FontAwesomeIcons.medapps,
                color: kTextColor1,
                size: 30.0,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProfileImagePanel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: kTextColor3,
            borderRadius: BorderRadius.circular(5.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
          child: Text(
            " Info ",
            style: kFilterSelectedTextStyle,
          ),
        ),
        Stack(
          children: [
            Container(),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(80.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, -2),
                          blurRadius: 5.0,
                        )
                      ]),
                  child: CircleAvatar(
                    radius: 55.0,
                    backgroundImage: AssetImage(imgUrl),
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
            Positioned(
              left: 0.0,
              bottom: 10.0,
              child: CircleAvatar(
                backgroundColor: kTextLinkColor2,
                child: Icon(
                  FeatherIcons.plus,
                  color: kTextColor2,
                  size: 35.0,
                ),
              ),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: kTextColor3,
            borderRadius: BorderRadius.circular(5.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
          child: Icon(
            FontAwesomeIcons.trophy,
            size: 20.0,
            color: kTextColor2,
          ),
        ),
      ],
    );
  }

  Widget _buildTopAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            FeatherIcons.chevronLeft,
            size: 30.0,
          ),
          onPressed: () => Get.back(),
        ),
        Text(
          "PROFILE",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.1)),
        ),
        IconButton(
          icon: Icon(
            FeatherIcons.menu,
            size: 30.0,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
