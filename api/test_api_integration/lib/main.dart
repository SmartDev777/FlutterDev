import 'package:flutter/material.dart';
import 'package:test_api_integration/add_user.dart';
import 'package:test_api_integration/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddUser(),
    );
  }
}
