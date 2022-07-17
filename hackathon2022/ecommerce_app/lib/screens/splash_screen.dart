import 'package:ecommerce_app/app_colors.dart';
import 'package:ecommerce_app/screens/onboarding_main.dart';
import 'package:ecommerce_app/widgets/app_widgets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splash_color,
      body:
          Center(child: Image(image: AssetImage('assets/images/app_logo.png'))),
    );
  }
}
