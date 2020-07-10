import 'package:flutter/material.dart';



  

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
       title: Text('TP1:compteur'),
       leading: Icon(Icons.person) ),
       body: Center(
         child: Text('salam',
         style: TextStyle(fontSize: 33,color: Colors.blue),)

       ),
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add)
         ,onPressed: (){
           print("ok");
         },),
    ),);
  }
}