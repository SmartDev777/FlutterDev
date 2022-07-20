import 'package:ecommerce_app/firebase_options.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:ecommerce_app/screens/login_screen.dart';
import 'package:ecommerce_app/screens/main_screen.dart';
import 'package:ecommerce_app/screens/onboarding_main.dart';
import 'package:ecommerce_app/screens/onboarding_screen.dart';
import 'package:ecommerce_app/screens/payment_success.dart';
import 'package:ecommerce_app/screens/product_detail.dart';
import 'package:ecommerce_app/screens/product_screen.dart';
import 'package:ecommerce_app/screens/products_list.dart';
import 'package:ecommerce_app/screens/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_app/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: productDetail());
  }
}
