import 'package:firebase_app/home_screen.dart';
import 'package:firebase_app/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailControler = new TextEditingController();
  TextEditingController pwdController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: TextField(
                controller: emailControler,
              )),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: TextField(
                controller: pwdController,
              )),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              child: Text("Sign Up")),
          ElevatedButton(
              onPressed: () async {
                try {
                  final credential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: emailControler.text,
                          password: pwdController.text);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    print('No user found for that email.');
                  } else if (e.code == 'wrong-password') {
                    print('Wrong password provided for that user.');
                  }
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
