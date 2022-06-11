import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3
({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        actions: [
          Icon(Icons.ac_unit_outlined)],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              width: 100,height: 100,color: Colors.brown,
          child: Text("Hello World"),
            ),
          Container(width: 100,height: 100,color: Colors.red,),
            Container(width: 100,height: 100,color: Colors.blue,)
          ],
        ),
      ),
    );
  }
}