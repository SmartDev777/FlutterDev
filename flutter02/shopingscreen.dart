import 'package:flutter/material.dart';

class ShopingScreen extends StatelessWidget {
  const ShopingScreen
({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shoping view"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
      child: Column(
        children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              getSmallContainer( Colors.green,),
              SizedBox(width: 10,),
               getSmallContainer( Colors.black,),
                SizedBox(width: 10,),
                getSmallContainer( Colors.blue,),
                   SizedBox(width: 10,),
                 getSmallContainer( Colors.pink,),
                     SizedBox(width: 10,),
                  getSmallContainer( Colors.purple,),
              
            ],
          ),
        ),
         SizedBox(height: 50,),
      Row(
            children: [
               
              getLargeContainer( Colors.blueGrey,),
                SizedBox(width: 10,),
               getLargeContainer( Colors.lightBlue,),
               
            ],
          ),
 SizedBox(height: 50,),
            Row(
            children: [
              
              getLargeContainer( Colors.pink,),
              SizedBox(width: 10,),
               getLargeContainer( Colors.green,),
               
            ],
          ),
           SizedBox(height: 50,),
            Row(
            children: [
              
              getLargeContainer( Colors.yellow,),
              SizedBox(width: 10,),
               getLargeContainer( Colors.brown,),
               
            ],
          ),
        ],
      ),
        ),
      ),
      
    );
  }
  Container getSmallContainer(Color color)
  {
return Container(width: 100,height: 100,color: color,
);
  }

   Container getLargeContainer(Color color)
  {
return Container(width: 165,height: 250,color: color,);
  }

}