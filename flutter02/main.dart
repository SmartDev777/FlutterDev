 import 'dart:ui';
import 'package:chess_ui/screen2.dart';
import 'package:chess_ui/shopingscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
     home: ShopingScreen()
    );
  }


 
}

class Home extends StatelessWidget {
  const Home
({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Check box"),),
       body: Center(
         child: Container(
           width: 300,
           height: 300,
           child: Column(children: [

Row(children: [
getContainer(Colors.amber),
getContainer(Colors.blue),
getContainer(Colors.red),
getContainer(Colors.green),
getContainer(Colors.black),
],),
SizedBox(height: 10,),

Row(children: [
getContainer(Colors.amber),
getContainer(Colors.blue),
getContainer(Colors.red),
getContainer(Colors.green),
getContainer(Colors.black),
],),
SizedBox(height: 10,),
Row(children: [
getContainer(Colors.amber),
getContainer(Colors.blue),
getContainer(Colors.red),
getContainer(Colors.green),
getContainer(Colors.black),
],),

SizedBox(height: 10,),
Row(children: [
getContainer(Colors.amber),
getContainer(Colors.blue),
getContainer(Colors.red),
getContainer(Colors.green),
getContainer(Colors.black),
],),

SizedBox(height: 10,),
Row(children: [
getContainer(Colors.amber),
getContainer(Colors.blue),
getContainer(Colors.red),
getContainer(Colors.green),
getContainer(Colors.black),
],)

           ],),
         ),
       ),
     );
  }

   Container getContainer(Color color)
  {
return Container(width: 50,height: 50,color: color,);
  }
}
