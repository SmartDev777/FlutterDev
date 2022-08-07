import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:test_api_integration/user_services.dart';

class AddUser extends StatelessWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                postApi();
              },
              child: Text('Add User'),
            ),
            ElevatedButton(
              onPressed: () {
                DeleteApi();
              },
              child: Text('Delete User'),
            ),
            ElevatedButton(
              onPressed: () {
                putApi();
              },
              child: Text('Update User'),
            ),
          ],
        ),
      ),
    );
  }
}
