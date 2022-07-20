import 'package:ecommerce_app/app_colors.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/main_screen.dart';
import 'package:ecommerce_app/screens/product_screen.dart';
import 'package:ecommerce_app/widgets/app_widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController emailContLLLroller = new TextEditingController();
TextEditingController passwordContLLLroller = new TextEditingController();

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
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
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
                appTextField("Your Email", Icons.person, emailContLLLroller),
                SizedBox(
                  height: 20,
                ),
                appTextField("Password", Icons.lock, passwordContLLLroller),
                SizedBox(
                  height: 20,
                ),
                appRoundedButton("Login", () async {
                  try {
                    final credential = await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: emailContLLLroller.text,
                            password: passwordContLLLroller.text);

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      print('No user found for that email.');
                    } else if (e.code == 'wrong-password') {
                      print('Wrong password provided for that user.');
                    }
                  }
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
                GestureDetector(
                  onTap: () async {
                    try {
                      final credential = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: emailContLLLroller.text,
                        password: passwordContLLLroller.text,
                      );
// ignore: nullable_type_in_catch_clause
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        print('The account already exists for that email.');
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: Text(
                    "Create Account",
                    style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                  ),
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
