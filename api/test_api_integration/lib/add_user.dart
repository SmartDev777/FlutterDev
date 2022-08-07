import 'package:flutter/material.dart';
import 'package:test_api_integration/user_services.dart';

class AddUser extends StatelessWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            postApi();
          },
          child: Text('Add User'),
        ),
      ),
    );
  }
}
