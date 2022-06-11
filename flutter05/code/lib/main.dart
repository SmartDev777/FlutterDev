import 'package:first_app/counter_screen.dart';
import 'package:first_app/dashboard.dart';
import 'package:first_app/login_screen.dart';
import 'package:first_app/stack_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: StackExample(),
    );
  }
}