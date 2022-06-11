import 'package:first_app/app_components.dart';
import 'package:first_app/balance_screen.dart';
import 'package:first_app/home_screen.dart';
import 'package:first_app/login_screen.dart';
import 'package:first_app/notification_screen.dart';
import 'package:first_app/number_screen.dart';
import 'package:first_app/offer_screen.dart';
import 'package:first_app/reward_screen.dart';
import 'package:first_app/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
