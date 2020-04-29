import 'dart:developer';

import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  MyAppState createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>{
  int count=0;
   void increment(){
     setState(() {
       count++;
     });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme:new ThemeData(
     primaryColor: Colors.lightGreen,accentColor: Colors.amberAccent,
     buttonColor: Colors.blueAccent,textTheme: TextTheme(body1: TextStyle(color:Colors.greenAccent)) 
    ),home: Scaffold(
      drawer: new Drawer(),
    floatingActionButton:new FloatingActionButton(backgroundColor:Colors.purple,onPressed: increment,
    child: new Icon(Icons.add),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    appBar:AppBar(title: new Text("Flutter Application"),
    centerTitle: true,
    //leading: Icon(Icons.home),
    elevation: 0.0,
    actions: <Widget>[
      Icon(Icons.access_alarm)
    ],
    ),
    body: new Center(child:new Text("Our Day Increased on..."+"\n"+count.toString(),
    style :new TextStyle(fontSize:20.0)
    
    )
    ),
    ),
    );
  }
}
