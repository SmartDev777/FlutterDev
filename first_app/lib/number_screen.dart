import 'package:first_app/app_assets.dart';
import 'package:first_app/app_colors.dart';
import 'package:first_app/app_widgets.dart';
import 'package:first_app/home_screen.dart';
import 'package:flutter/material.dart';

import 'app_strings.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.app_bg_color,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: Image.asset(
                      AppAssets.login_bg,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 30,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 100,
                            child: Text(
                              AppStrings.number_text,
                              style: TextStyle(
                                  fontFamily: AppStrings.app_font,
                                  color: AppColors.large_text_color,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ),
                          Container(
                            height: 400,
                            child: Stack(
                              children: [
                                Image.asset(
                                  AppAssets.icon_dots,
                                ),
                                Positioned(
                                  top: 50,
                                  child: Image.asset(
                                    AppAssets.icon_mobile,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.hint_container_bg_color),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "+92",
                            style: TextStyle(
                                color: AppColors.hint_text_color,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: AppStrings.hint_text_number,
                                fillColor: AppColors.hint_container_bg_color,
                                hintStyle: TextStyle(
                                    color: AppColors.medium_text_color,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                // border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(30))
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  VerticalSpace(),
                  // for rounded button

                  SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          style: buttonRoundedStyle(AppColors.btn_bg_dark),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            );
                          },
                          child: AppTextStyle(AppStrings.btn_verify))),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VerticalSpace(),
                AppSmallTextStyle(AppStrings.number_screen_bottom_text),
                VerticalSpace(),
                AppSmallTextStyle(AppStrings.bottom_text_policy)
              ],
            )
          ],
        ),
      ),
    );
  }
}
