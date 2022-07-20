import 'package:ecommerce_app/app_colors.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/main_screen.dart';
import 'package:ecommerce_app/screens/product_screen.dart';
import 'package:ecommerce_app/widgets/app_widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Image.asset(
              'assets/images/login_logo.png',
              width: 150.0,
              height: 150.0,
              // fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.line_color,
                  blurRadius: 4,
                  offset: Offset(4, 8), // Shadow position
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(27)),
            ),
            child: Column(
              children: [
                appTextField("Your Email", Icons.person),
                SizedBox(
                  height: 20,
                ),
                appTextField("Password", Icons.lock),
                SizedBox(
                  height: 20,
                ),
                appRoundedButton("Login", () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                }),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.btn_color,
                      ),
                    ),
                    Text("OR"),
                    Expanded(
                      child: Divider(
                        color: AppColors.line_color,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                appRoundedButton("Login with Phone", () {}),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Create Account",
                  style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                ),
                SizedBox(
                  width: 100,
                  child: Divider(
                    color: AppColors.line_color,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
