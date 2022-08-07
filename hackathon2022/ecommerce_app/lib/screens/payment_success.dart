import 'package:ecommerce_app/widgets/app_widgets.dart';
import 'package:flutter/material.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.green[100], shape: BoxShape.circle)),
          SizedBox(
            height: 40,
          ),
          appTitle('Payment Successful'),
          SizedBox(
            height: 20,
          ),
          appDescText(
              'Your order will be ready in 5 days, including shipping, more details and options for tracking will be sent to your email'),
          SizedBox(
            height: 40,
          ),
          appRoundedButton('Continue Shopping', () {})
        ],
      ),
    ));
  }
}
