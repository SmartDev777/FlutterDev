import 'package:first_app/app_constants.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
           
            // decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              //  color: Colors.amber,
            // ),
            child:Image.asset('assets/images/image1.jpg')  //load image from assets
          ),
           Container(
            child:Image.network(AppConstants.imageURL,height: 200,width: 200)  //load image from network
          ),

          CircleAvatar(
            backgroundImage: NetworkImage(AppConstants.imageURL),
            radius: 50,
       ),
          ElevatedButton(onPressed: (){
Navigator.of(context).pop();

          }, child: Text("Back"))
        ],
      ),
    );
  }
}