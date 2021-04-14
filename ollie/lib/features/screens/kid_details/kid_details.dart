import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ollie/features/widgets/ktextfield_widget.dart';
import 'package:ollie/features/widgets/my_drawer.dart';

class KidDetailspage extends StatefulWidget {
  @override
  _KidDetailspageState createState() => _KidDetailspageState();
}

class _KidDetailspageState extends State<KidDetailspage> {
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
                mainAxisSize: MainAxisSize.min,
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
                      Image(image: AssetImage("images/user.png"), height: 50.0),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.25),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Name: ",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.brown[200])),
                            SizedBox(width: 10.0),
                            KTextField()
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Text("Date of birth: ",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.brown[200])),
                            SizedBox(width: 10.0),
                            KTextField(),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Text("Feeding: ",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.brown[200])),
                            SizedBox(width: 10.0),
                            KTextField(),
                            SizedBox(width: 5.0),
                            KTextField(),
                            SizedBox(width: 5.0),
                            KTextField(),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Text("Location: ",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.brown[200])),
                            SizedBox(width: 10.0),
                            KTextField(),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
