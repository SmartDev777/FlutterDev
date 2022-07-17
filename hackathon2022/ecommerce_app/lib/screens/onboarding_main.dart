import 'package:ecommerce_app/app_strings.dart';
import 'package:ecommerce_app/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
        headerBackgroundColor: Colors.transparent,
        // finishButtonText: 'Register',
        // skipTextButton: Text('Skip'),
        // trailing: Text('Login'),
        background: [
          Image.asset('assets/images/onboarding_1.png'),
          Image.asset('assets/images/onboarding_2.png'),
          Image.asset('assets/images/onboarding_3.png'),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          appSliderView(context,"1", AppStrings.slider_1_desc),
          appSliderView(context,"2", AppStrings.slider_2_desc),
          appSliderView(context,"3", AppStrings.slider_3_desc),
        ],
      ),
    );
  }
}
