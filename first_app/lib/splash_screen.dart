import 'package:first_app/app_assets.dart';
import 'package:first_app/app_colors.dart';
import 'package:first_app/app_widgets.dart';
import 'package:first_app/number_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.app_bg_color,
      body: Column(
        children: [
          Expanded(
            child: Container(child: Image.asset(AppAssets.app_logo)),
          ),
          Container(
            margin: EdgeInsets.all(40),
            child: Column(
              children: [
                getInstantPay(context),
                SizedBox(
                  height: 10,
                ),
                Text(
                  AppStrings.splash_bottom_text,
                  style: TextStyle(color: AppColors.primary_text_color),
                ),
                VerticalSpace(),
                getBottomDots()
              ],
            ),
          )
        ],
      ),
    );
  }
}

getInstantPay(context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NumberScreen()),
      );
    },
    child: Stack(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 50,
          width: MediaQuery.of(context).size.width -
              MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.btn_bg_light),
        ),
        Container(
          height: 47,
          width: MediaQuery.of(context).size.width -
              MediaQuery.of(context).size.width * 0.5 -
              3,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.btn_bg_dark),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              AppStrings.btn_instant_payment,
              style: TextStyle(
                  fontFamily: 'RussoOne',
                  fontSize: 25,
                  color: AppColors.large_text_color),
            ),
          ),
        ),
      ],
    ),
  );
}

getBottomDots() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircleAvatar(
        radius: 4,
        backgroundColor: Colors.white,
      ),
      SizedBox(
        width: 5,
      ),
      CircleAvatar(
        radius: 4,
        backgroundColor: AppColors.btn_bg_dark,
      ),
      SizedBox(
        width: 5,
      ),
      CircleAvatar(
        radius: 4,
        backgroundColor: AppColors.btn_bg_dark,
      ),
      SizedBox(
        width: 5,
      ),
      CircleAvatar(
        radius: 4,
        backgroundColor: AppColors.btn_bg_dark,
      ),
      SizedBox(
        width: 5,
      ),
    ],
  );
}
