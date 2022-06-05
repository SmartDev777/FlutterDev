import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({ Key? key }) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  num count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

          Text("$count",style: TextStyle(color: Colors.amber,fontSize: 28,fontWeight: FontWeight.bold),),
          ElevatedButton(onPressed: (){

count++;
setState(() {
  print("$count");
});

          }, child: Text("ADD"))
          ],
        ),
      ),
    );
  }
}