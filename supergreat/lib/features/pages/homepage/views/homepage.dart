import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supergreat/features/data/brand_dummy_data.dart';
import 'package:supergreat/features/data/videos_dummy_data.dart';
import 'package:supergreat/features/pages/homepage/controller/homepage_controller.dart';
import 'package:supergreat/features/pages/homepage/widgets/brand_widget.dart';
import 'package:supergreat/features/pages/homepage/widgets/category_widget.dart';
import 'package:supergreat/features/pages/homepage/widgets/custom_tf_button_widget.dart';
import 'package:supergreat/features/pages/homepage/widgets/home_video_widget.dart';
import 'package:supergreat/features/pages/search_page/views/search_page.dart';
import 'package:supergreat/features/pages/video_page/views/video_page.dart';
import 'package:supergreat/theme/colors.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomePageController _homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 40.0),
              child: Column(
                children: [
                  TFButton(onPressed: () => Get.to(SearchPage())),
                  SizedBox(height: 15.0),
                  _buildCategoryList(),
                ],
              ),
            ),
            Divider(color: kTextColor1),
            _buildBrandAndVideoSection(),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: _buildFloatingActionButton(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBrandAndVideoSection() {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular Brands",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 220.0,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BrandWidget(
                    imgUrl: brands[index].imgUrl, videos: brands[index].videos);
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 15.0);
              },
              itemCount: brands.length,
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            "Videos For You",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
              height: 350.0,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Get.to(
                        VideoPage(
                          heroTag: videos[index].imgUrl,
                          imgUrl: videos[index].imgUrl,
                          name: videos[index].name,
                        ),
                      ),
                      child: HomeVideoWidget(
                        name: videos[index].name,
                        imgUrl: videos[index].imgUrl,
                        heroTag: videos[index].imgUrl,
                        imgUrlBrand: videos[index].imgUrlBrand,
                        brandTitle: videos[index].brandTitle,
                        brandSubtitle: videos[index].brandSubtitle,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 15.0);
                  },
                  itemCount: videos.length)),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }

  Widget _buildCategoryList() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 30.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          children: [
            CategoryWidget(
              title: "Featured",
              isSelect: true,
            ),
            SizedBox(width: 20.0),
            CategoryWidget(title: "Articles"),
            SizedBox(width: 20.0),
            CategoryWidget(title: "Playlists"),
            SizedBox(width: 20.0),
            CategoryWidget(title: "Brands"),
            SizedBox(width: 20.0),
            CategoryWidget(title: "Videos"),
            SizedBox(width: 20.0),
            CategoryWidget(title: "Profiles"),
            SizedBox(width: 20.0),
            CategoryWidget(title: "Products"),
            SizedBox(width: 20.0),
          ],
        ),
      ),
    );
  }

  // Widget _buildFloatingActionButton() {
  //   return Container(
  //     height: 75.0,
  //     padding: EdgeInsets.all(3.5),
  //     decoration: BoxDecoration(
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(50.0),
  //         boxShadow: [
  //           BoxShadow(
  //             color: Colors.black26,
  //             offset: Offset(0, -2),
  //             blurRadius: 5.0,
  //           )
  //         ]),
  //     child: FittedBox(
  //       child: FloatingActionButton(
  //         elevation: 0,
  //         onPressed: () {},
  //         child: Icon(
  //           FeatherIcons.plus,
  //           size: 45.0,
  //         ),
  //         backgroundColor: kButtonColor1,
  //       ),
  //     ),
  //   );
  // }

  Widget _buildBottomNavigationBar() {
    return GetBuilder<HomePageController>(
      builder: (_homePageController) {
        return BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black38,
          selectedIconTheme: IconThemeData(
            size: 25.0,
          ),
          unselectedLabelStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 15.0,
          )),
          items: [
            BottomNavigationBarItem(label: "", icon: Icon(FeatherIcons.home)),
            BottomNavigationBarItem(label: "", icon: Icon(FeatherIcons.search)),
            BottomNavigationBarItem(label: "", icon: Icon(FeatherIcons.video)),
            BottomNavigationBarItem(
                label: "", icon: Icon(FeatherIcons.shoppingBag)),
            BottomNavigationBarItem(label: "", icon: Icon(FeatherIcons.user)),
          ],
          currentIndex: _homePageController.selectedIndex,
          onTap: _homePageController.updateIndex,
        );
      },
    );
  }
}
