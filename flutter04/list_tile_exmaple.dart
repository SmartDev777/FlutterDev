import 'package:flutter/material.dart';

class Dashabord extends StatelessWidget {
  const Dashabord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("First App"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            getListTile("Flutter Developer", "Learning in smart way",
                trailing: "12:01 PM", icon: Icons.done_all),
            getListTile("Asad", "Hello how are you",
                trailing: "02:01 PM", icon: Icons.image),
            getListTile("Ali", "I am busy right",
                trailing: "02:01 PM", icon: Icons.done),
            getListTile("Ali", "I am busy right",
                trailing: "02:01 PM", icon: Icons.call)
          ],
        ),
      ),
    );
  }

  getListTile(title, subtitle, {leading, trailing, icon}) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        tileColor: Colors.lightGreen[100],
        title: Text(title),
        subtitle: Text(subtitle),
        leading: CircleAvatar(
          backgroundColor: Colors.green,
          child: Icon(Icons.person),
        ),
        trailing: Column(
          children: [
            Text(trailing),
            Icon(
              icon,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
