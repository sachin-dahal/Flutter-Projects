import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ollie/features/screens/kid_details/kid_details.dart';
import 'package:ollie/features/widgets/kid_info_card_widget.dart';
import 'package:ollie/features/widgets/my_drawer.dart';

class Statspage extends StatefulWidget {
  @override
  _StatspageState createState() => _StatspageState();
}

class _StatspageState extends State<Statspage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png'), fit: BoxFit.cover)),
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
                  SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(Icons.menu, size: 35.0),
                          onPressed: () =>
                              _scaffoldKey.currentState.openDrawer()),
                      Image(
                          image: AssetImage("images/ollie.png"), height: 50.0),
                      GestureDetector(
                        onTap: () => Get.to(KidDetailspage(),
                            transition: Transition.rightToLeft),
                        child: Image(
                            image: AssetImage("images/user.png"), height: 50.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.0),
                  Text(
                    "SLEEP PREFERENCES",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.brown[200],
                        letterSpacing: 1.4),
                  ),
                  SizedBox(height: 10.0),
                  KidInfoCard(
                    text: "Average wake up time: 6:51am",
                    color: Colors.teal[300],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "NAPS",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.brown[200],
                        letterSpacing: 1.4),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Leon takes 3 naps per day ",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.brown[200],
                        letterSpacing: 1.4),
                  ),
                  SizedBox(height: 10.0),
                  _buildNapPanel(),
                  SizedBox(height: 20.0),
                  _buildNepLengthPanel(),
                  SizedBox(height: 20.0),
                  _buildFavNapSound(),
                  SizedBox(height: 20.0),
                  _buildRoomTempPanel(),
                  SizedBox(height: 15.0),
                  Divider(thickness: 2, color: Colors.brown[200]),
                  SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(image: AssetImage("images/sub.png"), height: 4.0),
                        Image(
                            image: AssetImage("images/play_pause.png"),
                            height: 25.0),
                        Image(
                            image: AssetImage("images/add.png"), height: 25.0),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _buildRoomTempPanel() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[300], borderRadius: BorderRadius.circular(25.0)),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      width: Get.width * 0.85,
      child: Column(
        children: [
          SizedBox(height: 10.0),
          Text(
            "Favorite room temperature:",
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                letterSpacing: 1.4),
          ),
          Text(
            "72",
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                letterSpacing: 1.4),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Container _buildFavNapSound() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.orange[500], borderRadius: BorderRadius.circular(25.0)),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      width: Get.width * 0.85,
      child: Column(
        children: [
          SizedBox(height: 10.0),
          Text(
            "Favorite nap sound:",
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                letterSpacing: 1.4),
          ),
          Text(
            "Waves - Volume 7",
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                letterSpacing: 1.4),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Container _buildNepLengthPanel() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.brown[300], borderRadius: BorderRadius.circular(25.0)),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      width: Get.width * 0.85,
      child: Column(
        children: [
          SizedBox(height: 15.0),
          Text(
            "Average nap length: 1 hr, 10 min",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                letterSpacing: 1.4),
          ),
          SizedBox(height: 10.0),
          Text(
            "Average nap length: 2 hr, 27 min",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                letterSpacing: 1.4),
          ),
          SizedBox(height: 10.0),
          Text(
            "Average nap length: 3 hr, 58 min",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                letterSpacing: 1.4),
          ),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }

  Widget _buildNapPanel() {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              CircleAvatar(backgroundColor: Colors.orange[500], radius: 5),
              SizedBox(width: 6.0),
              Text(
                "Favorite nap #1: ",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.brown[200],
                    letterSpacing: 1.4),
              ),
              SizedBox(width: 10.0),
              Text(
                "8:53am - 10:11am",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.brown[200],
                    letterSpacing: 1.4),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              CircleAvatar(backgroundColor: Colors.brown[200], radius: 5),
              SizedBox(width: 6.0),
              Text(
                "Favorite nap #2: ",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.brown[200],
                    letterSpacing: 1.4),
              ),
              SizedBox(width: 10.0),
              Text(
                "1:18pm - 2:27pm",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.brown[200],
                    letterSpacing: 1.4),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              CircleAvatar(backgroundColor: Colors.blue[200], radius: 5),
              SizedBox(width: 6.0),
              Text(
                "Favorite nap #3: ",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.brown[200],
                    letterSpacing: 1.4),
              ),
              SizedBox(width: 10.0),
              Text(
                "4:54pm - 5:49pm",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.brown[200],
                    letterSpacing: 1.4),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
