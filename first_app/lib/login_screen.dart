import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.blueGrey,
              Colors.white,
            ])),
        padding: EdgeInsets.all(16),
        child: Center(
          child: Container(
            // color: Colors.black54,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                      "https://ecurater.com/wp-content/uploads/2020/10/login1.png"),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("Sign In",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    cursorColor: Colors.grey,
                    style: TextStyle(color: Colors.black),
                    decoration: getTextField("Email", Icons.email),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                    decoration: getTextField("Password", Icons.vpn_key),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  getRoundedButton(context, "Login",
                      textColor: Colors.white,
                      backgroundColor: Colors.deepPurple),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(top: 20),
                    child: Text("Forget Password ?",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.normal,
                            fontSize: 18)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  getRoundedButton(context, "Sign Up"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget getRoundedButton(context, text,
    {backgroundColor = Colors.white, textColor = Colors.deepPurple}) {
  return ElevatedButton(
      child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(15.0),
          alignment: Alignment.center,
          child: Text(text.toUpperCase(),
              style: TextStyle(fontSize: 18, color: textColor))),
      style: ButtonStyle(
          // foregroundColor:
          //     MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.deepPurple)))),
      onPressed: () => null);
}

InputDecoration getTextField(hint, icon) {
  return InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.deepPurple,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      filled: true,
      hintStyle: TextStyle(color: Colors.grey),
      hintText: hint,
      fillColor: Colors.white);
}
