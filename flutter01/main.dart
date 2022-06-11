import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Column(
          children: [
            Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Text("Hello world")),
            Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Column(
                  children: [
                    Text("Data 1"),
                    Text("Data 2"),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
