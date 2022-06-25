import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_app/dashboard.dart';
import 'package:test_app/todo_note.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer(duration, callback)

    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NotApp()),
            ));

// Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => const DashboardScreen()),
//   );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          'https://res.cloudinary.com/teepublic/image/private/s--lxNXHPN3--/c_fit,g_north_west,h_840,w_679/co_ffffff,e_outline:40/co_ffffff,e_outline:inner_fill:1/co_ffffff,e_outline:40/co_ffffff,e_outline:inner_fill:1/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_jpg,h_630,q_90,w_630/v1585726530/production/designs/8796655_0.jpg',
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
