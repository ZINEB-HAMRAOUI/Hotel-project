import 'package:hotelproject/screens/Home.dart';
import 'package:flutter/material.dart';
import 'screens/Login.dart';


class MyApp2 extends StatefulWidget {
  @override
  MyApp2_State createState() => MyApp2_State();
}

class MyApp2_State extends State<MyApp2> {
 
  @override

  Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home:Login(),
    );
  }
}