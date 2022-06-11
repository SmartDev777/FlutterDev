import 'package:first_app/app_colors.dart';
import 'package:first_app/dashboard.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
appBar: AppBar(
  title: Text("Login Screen",style: TextStyle(
    color: Color(AppColorConstant.baseColor)
  ),),
),
body: Center(

  child: ElevatedButton(
   style: ButtonStyle(
     backgroundColor: MaterialStateProperty.all(Colors.red),
      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 25,vertical: 25)),
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
   ),
onPressed: (){
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const DashboardScreen()),
  );
},

child: Text("Login",),
  ),
),

    );
  }
}