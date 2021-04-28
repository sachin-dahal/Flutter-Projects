import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'package:supergreat/features/data/comment_dummy_data.dart';
import 'package:supergreat/features/pages/profile_page/views/profile_page.dart';
import 'package:supergreat/features/pages/video_page/controller/videopage_controller.dart';
import 'package:supergreat/features/pages/video_page/widgets/comments_widget.dart';
import 'package:supergreat/features/pages/video_page/widgets/sheet_button_widget.dart';
import 'package:supergreat/features/pages/video_page/widgets/sheet_yes_no_button_widget.dart';
import 'package:supergreat/theme/colors.dart';

class VideoPage extends StatelessWidget {
  final VideoPageController _videoPageController =
      Get.put(VideoPageController());

  final String heroTag;
  final String imgUrl;
  final String name;

  VideoPage({
    @required this.heroTag,
    @required this.imgUrl,
    @required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(),
          Container(
            height: height,
            width: width,
            child: Hero(
              tag: heroTag,
              child: Image(
                image: AssetImage(imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(color: Colors.black12),
          Positioned(
            top: 50.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      FeatherIcons.chevronLeft,
                      size: 30.0,
                      color: kTextColor2,
                    ),
                    onPressed: () => Get.back(),
                  ),
                  GestureDetector(
                    onTap: () => Get.to(
                      ProfilePage(
                        imgUrl: imgUrl,
                        name: name,
                      ),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage(imgUrl),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          name,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  color: kTextColor2,
                                  letterSpacing: 1.1)),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      FeatherIcons.menu,
                      size: 30.0,
                      color: kTextColor2,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: height * 0.08,
            child: SolidBottomSheet(
              toggleVisibilityOnTap: true,
              headerBar: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0)),
                ),
                height: 40,
                child: Center(child: GetBuilder<VideoPageController>(
                    builder: (_videoPageController) {
                  return _videoPageController.isOpen
                      ? Icon(FontAwesomeIcons.chevronDown, color: kTextColor3)
                      : Icon(FontAwesomeIcons.chevronUp, color: kTextColor3);
                })),
              ),
              onShow: () => _videoPageController.setOpened(),
              onHide: () => _videoPageController.setOpened(false),
              body: Container(
                height: height * 0.2,
                width: width,
                color: kBackgroundColor2,
                child: ListView(
                  padding: EdgeInsets.all(0),
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    //* FOR TOP
                    Container(
                      height: 90.0,
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 20.0),
                          Container(
                            height: 60.0,
                            child: Image(
                              image: AssetImage('images/video1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 40.0),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Hipdot"),
                                Text("Zion Palette"),
                                SizedBox(height: 20.0),
                                Text("63 replies"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Divider(height: 2, thickness: 1),
                    //* FOR BUTTONS
                    Container(
                      height: 70.0,
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SheetButtonWidget(text: "Buy", onPressed: () {}),
                          SheetButtonWidget(
                              text: "+ My Shelf", onPressed: () {}),
                          SheetButtonWidget(
                              text: "+ Wish List", onPressed: () {}),
                        ],
                      ),
                    ),
                    Divider(height: 2, thickness: 1),
                    //* FOR QUESTION
                    Container(
                      height: 60.0,
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Was this video helpful?',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              YesNoButtonWidget(text: "Yes", onPressed: () {}),
                              SizedBox(width: 5.0),
                              YesNoButtonWidget(text: "No", onPressed: () {}),
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(height: 2, thickness: 1),
                    //* FOR COMMENTS
                    Container(
                      height: 300.0,
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.only(top: 10.0),
                          itemBuilder: (context, index) {
                            return CommentWidget(
                              imgUrl: comments[index].imgUrl,
                              name: comments[index].name,
                              comment: comments[index].comment,
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(height: 2, thickness: 1);
                          },
                          itemCount: comments.length),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: height * 0.08,
              width: width,
              color: kBackgroundColor2.withAlpha(150),
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Add Comment",
                          hintStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          )),
                          isDense: true,
                          fillColor: kBackgroundColor1,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 15.0),
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: kBackgroundColor1),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kBackgroundColor1, width: 0.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          suffix: GestureDetector(
                            onTap: () => FocusScope.of(context).unfocus(),
                            child: Text(
                              "Send",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  CircleAvatar(
                    backgroundColor: kBackgroundColor1,
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      color: kBackgroundColor1.withGreen(140),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
