import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Contact Us Frame",
      home: HomePage(),
    ),
  );
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(child: new Text("Contact Us", style: new TextStyle(color: Colors.orange),)),
      ),
      body: new Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Center(child: Image.asset('images/contactus.png', height: 150,
          ),
          ),
          SizedBox(height: 10,),
          new Text("Do you have any queries? \n Feel free to contact us",
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontFamily: 'Cursive',
              fontSize: 20,
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,offset: Offset(0, 8)

                      )
                    ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.email, color: Colors.orange, size: 45,),
                      SizedBox(height: 5,),
                      Text("Email:", style: new TextStyle(
                        color: Colors.orange,
                      ),),
                      Center(child: Text("sachindahal@gmail.com",textAlign: TextAlign.center, style: new TextStyle(
                        color: Colors.grey[600],
                      ),)),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,offset: Offset(0,8)
                      )
                    ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.location_on, color: Colors.orange,size: 45,),
                      SizedBox(height: 5,),
                      Text("Location:", style: new TextStyle(
                        color: Colors.orange,
                      ),),
                      Center(child: Text("Itahari, Sunsari \n Nepal", textAlign: TextAlign.center, style: new TextStyle(
                        color: Colors.grey[600],
                      ),)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,offset: Offset(0, 8)
                        )
                      ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.web, color: Colors.orange,size: 45,),
                      SizedBox(height: 5,),
                      Text("Website:", style: new TextStyle(
                        color: Colors.orange,
                      ),),
                      Text("sachind.com.np", style: new TextStyle(
                        color: Colors.grey[600],
                      ),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,offset: Offset(0, 8)
                        )
                      ]
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.call, color: Colors.orange,size: 45,),
                      SizedBox(height: 5,),
                      Text("Contact:", style: new TextStyle(
                        color: Colors.orange,
                      ),),
                      Text("98XXXXXXXX",style: new TextStyle(
                        color: Colors.grey[600],
                      ),),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 30,),
          Text("Copyright (C) 2020. Sachin Dahal", style: new TextStyle(
            color: Colors.grey[500]
          ),),
          Text("All Rights Reserved.", style: new TextStyle(
              color: Colors.grey[500]
          ),),
        ],
      ),
    );
  }
}

