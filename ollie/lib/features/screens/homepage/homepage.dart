import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ollie/features/screens/kid_details/kid_details.dart';
import 'package:ollie/features/screens/sound_library/sound_library.dart';
import 'package:ollie/features/screens/stats/stats_page.dart';
import 'package:ollie/features/widgets/kid_info_card_widget.dart';
import 'package:ollie/features/widgets/my_drawer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final height = Get.height;
  final width = Get.width;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png'), fit: BoxFit.cover)),
      child: WillPopScope(
        onWillPop: () => SystemNavigator.pop(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          key: _scaffoldKey,
          drawer: MyDrawer(),
          body: ScrollConfiguration(
            behavior: ScrollBehavior()
              ..buildViewportChrome(context, null, AxisDirection.down),
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: Column(
                  children: [
                    SizedBox(height: 45.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(Icons.menu, size: 35.0),
                            onPressed: () =>
                                _scaffoldKey.currentState.openDrawer()),
                        Image(
                            image: AssetImage("images/ollie.png"),
                            height: 50.0),
                        GestureDetector(
                          onTap: () => Get.to(KidDetailspage(),
                              transition: Transition.rightToLeft),
                          child: Image(
                              image: AssetImage("images/user.png"),
                              height: 50.0),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.0),
                    Image(
                        image: AssetImage("images/baby_pp.png"), height: 120.0),
                    SizedBox(height: 10.0),
                    Image(image: AssetImage("images/leon.png"), height: 30.0),
                    SizedBox(height: 25.0),
                    GestureDetector(
                        onTap: () => Get.to(Statspage()),
                        child: _buildFirstKidInfoBox()),
                    SizedBox(height: 10.0),
                    GestureDetector(
                      onTap: () => Get.to(SoundLibrary()),
                      child: KidInfoCard(
                        text: "Currently Playing: Womb",
                        color: Colors.deepOrange[200],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    KidInfoCard(
                      text: "Night Light: Motion only",
                      color: Colors.brown[200],
                    ),
                    SizedBox(height: 10.0),
                    KidInfoCard(
                      text: "Temperature: 72*",
                      color: Colors.blue[200],
                    ),
                    SizedBox(height: 15.0),
                    _buildSwitchPanel(),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(thickness: 2, color: Colors.brown[200]),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage("images/sub.png"), height: 4.0),
                    Image(
                        image: AssetImage("images/play_pause.png"),
                        height: 25.0),
                    Image(image: AssetImage("images/add.png"), height: 25.0),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Center _buildSwitchPanel() {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "SMART MODE",
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w800,
                color: Colors.brown[200]),
          ),
          SizedBox(width: 15.0),
          Transform.scale(
            scale: 1.5,
            child: Switch(
                value: isSelected,
                activeThumbImage: AssetImage("images/sheep_head.png"),
                activeColor: Colors.teal[200],
                inactiveThumbImage: AssetImage("images/sheep_head.png"),
                onChanged: (val) {
                  setState(() {
                    isSelected = !isSelected;
                  });
                }),
          )
        ],
      ),
    );
  }

  Container _buildFirstKidInfoBox() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.teal[300], borderRadius: BorderRadius.circular(25.0)),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      width: width * 0.75,
      child: Column(
        children: [
          Text(
            "Leon has been sleeping",
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "for 3:15hs",
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
              SizedBox(width: 20.0),
              Image(image: AssetImage("images/home_hours.png"), height: 20.0)
            ],
          )
        ],
      ),
    );
  }
}
