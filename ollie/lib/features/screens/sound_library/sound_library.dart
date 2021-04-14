import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ollie/features/screens/kid_details/kid_details.dart';
import 'package:ollie/features/widgets/my_drawer.dart';

class SoundLibrary extends StatefulWidget {
  @override
  _SoundLibraryState createState() => _SoundLibraryState();
}

class _SoundLibraryState extends State<SoundLibrary> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png'), fit: BoxFit.cover)),
      child: Scaffold(
        key: _scaffoldKey,
        drawer: MyDrawer(),
        body: ScrollConfiguration(
          behavior: ScrollBehavior()
            ..buildViewportChrome(context, null, AxisDirection.down),
          child: SingleChildScrollView(
            child: Container(
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
                    "SOUND LIBRARY",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.brown[200],
                        letterSpacing: 0.6),
                  ),
                  SizedBox(height: 10.0),
                  GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    crossAxisCount: 3,
                    childAspectRatio: 1.5,
                    mainAxisSpacing: 20.0,
                    children: [
                      Image(image: AssetImage("images/img1.png"), height: 80.0),
                      Image(image: AssetImage("images/img2.png"), height: 80.0),
                      Image(image: AssetImage("images/img3.png"), height: 80.0),
                      Image(image: AssetImage("images/img4.png"), height: 80.0),
                      Image(image: AssetImage("images/img5.png"), height: 80.0),
                      Image(image: AssetImage("images/img6.png"), height: 80.0),
                      Image(image: AssetImage("images/img7.png"), height: 80.0),
                      Image(image: AssetImage("images/img8.png"), height: 80.0),
                      Image(image: AssetImage("images/img9.png"), height: 80.0),
                      Image(
                          image: AssetImage("images/img10.png"), height: 80.0),
                      Image(image: AssetImage("images/img5.png"), height: 80.0),
                      Image(
                          image: AssetImage("images/baby_pp.png"),
                          height: 80.0),
                    ],
                  ),
                  SizedBox(height: 25.0),
                  _buildCircleTabIndicatorPanel(),
                  SizedBox(height: 15.0),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Divider(thickness: 2, color: Colors.brown[200])),
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
                  SizedBox(height: 30.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row _buildCircleTabIndicatorPanel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 12.0,
          width: 12.0,
          decoration: BoxDecoration(
              color: Colors.brown[200],
              borderRadius: BorderRadius.circular(25.0)),
        ),
        SizedBox(width: 10.0),
        Container(
          height: 12.0,
          width: 12.0,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[200]),
              borderRadius: BorderRadius.circular(25.0)),
        ),
        SizedBox(width: 10.0),
        Container(
          height: 12.0,
          width: 12.0,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.brown[200]),
              borderRadius: BorderRadius.circular(25.0)),
        ),
      ],
    );
  }
}
