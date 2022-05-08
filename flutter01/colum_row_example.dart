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
            Row(
              children: [
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                    child: Column(
                      children: [
                        Text(" -------- "),
                        Row(
                          children: [
                            Text(" -------- "),
                            Text(" -------- "),
                          ],
                        ),
                      ],
                    )),
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                    child: Text(" -------- ")),
              ],
            ),
            Container(
                height: 100,
                width: 100,
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(" -------- "),
                        Text(" -------- "),
                      ],
                    ),
                    Text(" -------- "),
                    Row(
                      children: [
                        Text(" -------- "),
                        Text(" -------- "),
                      ],
                    ),
                  ],
                )),
            Row(
              children: [
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.pink,
                    child: Text(" -------- ")),
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.brown,
                    child: Text(" -------- ")),
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey,
                    child: Text(" -------- ")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
