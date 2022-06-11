import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2
({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
      child: Column(
        children: [
       Container(width: 200,height: 300,color: Colors.red,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(width: 200,height: 300,color: Colors.green,),
               Container(width: 200,height: 300,color: Colors.blueGrey,),
                Container(width: 00,height: 300,color: Colors.black,),
            ],
          ),
        ),
       Container(width: 200,height: 300,color: Colors.blue,),
        ],
      ),
        ),
      ),
      
    );
  }
}