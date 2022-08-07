import 'package:ecommerce_app/app_colors.dart';
import 'package:ecommerce_app/screens/payment_success.dart';

import 'package:flutter/material.dart';

import '../widgets/app_widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          cartHeader(),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return cardItem();
                }),
          ),
          CartbottomView(context)
        ],
      ),
    ));
  }
}

cartHeader() {
  return Container(
    child: Row(
      children: [
        Expanded(child: appTitle('Cart')),
        Icon(Icons.search),
        CircleAvatar(
          radius: 20.0,
          backgroundImage: AssetImage('assets/images/circle_img.png'),
          backgroundColor: Colors.transparent,
        )
      ],
    ),
  );
}

CartbottomView(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Total",
        style: TextStyle(color: AppColors.lable_color),
      ),
      appPrimaryText('\$24.99'),
      appRoundedButton("Pay Now", () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PaymentSuccessScreen()),
        );
      }),
    ],
  );
}

cardItem() {
  return Card(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: ListTile(
          leading: Image.asset(
            'assets/images/cart_img.png',
            width: 100.0,
            height: 100.0,
            // fit: BoxFit.cover,
          ),
          title: Text(
            "Hawain Shirt",
            style: TextStyle(color: Colors.black, fontFamily: 'Raleway'),
          ),
          subtitle: Text("Snaday Williams"),
          trailing: appPrimaryText('\$25.99')),
    ),
  );
}
