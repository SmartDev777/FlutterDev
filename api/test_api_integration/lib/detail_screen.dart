import 'package:flutter/material.dart';
import 'package:test_api_integration/user_model.dart';

class DetailScreen extends StatelessWidget {
  late UserModel? userModel;
  DetailScreen({Key? key, @required this.userModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${userModel?.username} Detail'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getTitle('User Details'),
          Container(
            margin: EdgeInsets.all(8),
            width: double.infinity,
            child: Card(
                child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getSimpleText('Name : ${userModel?.name}'),
                getSimpleText('UserName : ${userModel?.username}'),
                getSimpleText('Email : ${userModel?.email}'),
                getSimpleText('Phone : ${userModel?.phone}'),
              ],
            )),
          ),
          SizedBox(
            height: 10,
          ),
          getTitle('Company Details'),
          Container(
            margin: EdgeInsets.all(8),
            width: double.infinity,
            child: Card(
                child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getSimpleText('CompanyName : ${userModel?.company?.name}'),
                getSimpleText('Website : ${userModel?.website}'),
              ],
            )),
          ),
        ],
      ),
    );
  }
}

getTitle(title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      title,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff1E1E1E)),
    ),
  );
}

getSimpleText(title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      title,
      style: TextStyle(fontSize: 16, color: Colors.grey),
    ),
  );
}
