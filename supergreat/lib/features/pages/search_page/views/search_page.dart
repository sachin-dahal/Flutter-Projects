import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supergreat/features/data/brand_dummy_data.dart';
import 'package:supergreat/features/data/product_dummy_data.dart';
import 'package:supergreat/features/data/videos_dummy_data.dart';
import 'package:supergreat/features/pages/homepage/controller/homepage_controller.dart';
import 'package:supergreat/features/pages/homepage/widgets/brand_widget.dart';
import 'package:supergreat/features/pages/homepage/widgets/home_video_widget.dart';
import 'package:supergreat/features/pages/search_page/controller/search_page_controller.dart';
import 'package:supergreat/features/pages/video_page/views/video_page.dart';
import 'package:supergreat/theme/colors.dart';

class SearchPage extends StatelessWidget {
  final SearchPageController _searchPageController =
      Get.put(SearchPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildUserCoinPanel(),
            Divider(color: Colors.grey[600]),
            SizedBox(height: 20.0),
            _buildSearchTextField(context),
            SizedBox(height: 20.0),
            GetBuilder<SearchPageController>(builder: (_searchPageController) {
              return _searchPageController.isFilled
                  ? _buildSearchResultsField()
                  : _buildNoSearchResultsFound();
            }),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Container _buildSearchResultsField() {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${videos.length.toString()} Videos Found",
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
                  itemCount: videos.length - 1)),
          SizedBox(height: 30.0),
          Text(
            "${brands.length.toString()} Brands Found",
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
            "${products.length.toString()} Products Found",
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
                    imgUrl: products[index].imgUrl,
                    videos: products[index].videos);
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 15.0);
              },
              itemCount: products.length,
            ),
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }

  Widget _buildNoSearchResultsFound() {
    return Container(
        height: 200.0,
        child: Center(
            child: Text(
          "No search results found!",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 18.0,
            letterSpacing: 1.1,
            fontWeight: FontWeight.w500,
          )),
        )));
  }

  Widget _buildSearchTextField(BuildContext context) {
    return TextField(
      autofocus: true,
      controller: _searchPageController.searchController,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      onChanged: (value) => _searchPageController.setFill(),
      decoration: InputDecoration(
          prefixIcon: Icon(
            FeatherIcons.search,
            color: Colors.grey[600],
          ),
          hintText: "Search for anything...",
          hintStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w600,
          )),
          isDense: true,
          fillColor: kBackgroundColor2,
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
          enabled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kBackgroundColor1),
            borderRadius: BorderRadius.circular(25.0),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: kBackgroundColor1, width: 0.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          suffix: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
              _searchPageController.searchController.clear();
              _searchPageController.setFill();
            },
            child: CircleAvatar(
              radius: 12.0,
              backgroundColor: Colors.grey[600],
              child: Text(
                "X",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      color: kTextColor2),
                ),
              ),
            ),
          )),
    );
  }

  Widget _buildUserCoinPanel() {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Icon(FontAwesomeIcons.userAlt), onPressed: () {}),
          Image(
            image: AssetImage("images/supergreat.png"),
            height: 80.0,
          ),
          Container(
            decoration: BoxDecoration(
                color: kBackgroundColor2,
                borderRadius: BorderRadius.circular(20.0)),
            padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
            child: Row(
              children: [
                Image(image: AssetImage('images/coin.png'), height: 25.0),
                SizedBox(width: 5.0),
                Text(
                  '0',
                  style:
                      GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18.0)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

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
