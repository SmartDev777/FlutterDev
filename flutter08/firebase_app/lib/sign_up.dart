import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: TextField(
                  controller: emailController,
                  decoration: getDecoration("Email"))),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: TextField(
                controller: passwordController,
                decoration: getDecoration("Password"),
              )),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: TextField(
                decoration: getDecoration('Number'),
              )),
          ElevatedButton(
              onPressed: () {
                signupWithFirebase();
              },
              child: Text("Sign Up"))
        ],
      ),
    );
  }

  signupWithFirebase() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}

getDecoration(hint) {
  return InputDecoration(hintText: hint);
}
