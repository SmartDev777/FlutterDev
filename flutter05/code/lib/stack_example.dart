
import 'package:flutter/material.dart';
class StackExample extends StatelessWidget {
  const StackExample({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
alignment: Alignment.center,
        children: [

          Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),

         


          CircleAvatar(
            backgroundColor: Colors.amber,
            radius: 100,
          ),

           Positioned(
             top: 80,
      
             left: 220,
             child: CircleAvatar(
               backgroundColor: Colors.green,
            radius: 20,
               child: Icon(Icons.edit,color: Colors.white,))),
          //     Container(
          //   height: 200,
          //   width: 200,
          //   color: Colors.amber,
          // ),
          //     Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.green,
          // )
        ],
      ),
    );
  }
}