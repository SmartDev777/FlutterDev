import 'package:ecommerce_app/screens/login_screen.dart';
import 'package:ecommerce_app/widgets/app_widgets.dart';
import 'package:flutter/material.dart';

appSliderView(context,pageNo, description) {
  return Container(
    padding: EdgeInsets.all(16),
    // decoration: BoxDecoration(
    //     image: DecorationImage(
    //   image: AssetImage("assets/images/onboarding_1.png"),
    //   fit: BoxFit.cover,
    // )),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              appSmallText("NO"),
              SizedBox(
                width: 5,
              ),
              appLargeTitle(pageNo)
            ],
          ),
          Text("Featured",
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFE2550))),
          appLargeTitle("Tailored"),
          appSmallText(
              "Jennifer Kingsley exploring the new range of winter fashion wear"),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
              replaceToNewScreen(context, LoginScreen());
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                textAlign: TextAlign.center,
                "Shop Now",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
          )
        ]),
  );
}
