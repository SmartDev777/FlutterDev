import 'package:flutter/material.dart';

import '../widgets/app_widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          cartHeader(),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return cardItem();
                }),
          ),
        ],
      ),
    ));
  }
}

cartHeader() {
  return Container(
    child: Row(
      children: [
        Expanded(child: appTitle('')),
        Icon(Icons.search),
        CircleAvatar(
          radius: 20.0,
          backgroundImage: AssetImage('assets/images/circle_img.png'),
          backgroundColor: Colors.transparent,
        )
      ],
    ),
  );
}

cardItem() {
  return Card(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: ListTile(
          leading: CircleAvatar(
            radius: 20.0,
            backgroundImage: AssetImage('assets/images/circle_img.png'),
            backgroundColor: Colors.transparent,
          ),
          title: Text(
            "Hawain Shirt",
            style: TextStyle(color: Colors.black, fontFamily: 'Raleway'),
          ),
          subtitle: Text("Snaday Williams"),
          trailing: Icon(
            Icons.heart_broken,
            color: Colors.red,
          )),
    ),
  );
}
