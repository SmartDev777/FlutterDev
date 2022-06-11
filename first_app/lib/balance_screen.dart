import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_widgets.dart';

class Balancescreen extends StatelessWidget {
  const Balancescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.app_bg_color,
      body: SafeArea(
        child: Container(
          child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration:
                  roudedBox(color: AppColors.container_notification_bg_color),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  mediumTextStyle('Porfolio Value'),
                  VerticalSpace(),
                  largeTextStyle('\$ 54,343'),
                  VerticalSpace(),
                  smallTextStyle('in 3 Accounts'),
                  getBankCards(),
                  VerticalSpace(),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Add / Manage Accounts'),
                      style: buttonRoundedStyle(AppColors.container_bg_color),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

getBankCards() {
  return GridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 10,
    shrinkWrap: true,
    crossAxisSpacing: 10,
    childAspectRatio: 1.3,
    children: [
      Container(
        padding: EdgeInsets.all(20),
        decoration: roudedBox(color: AppColors.bank_card_bg),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titleTextStyle('Federal Bank'),
            smallTextStyle('2132323213123'),
            VerticalSpace(height: 10),
            mediumTextStyle('16,4545')
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        decoration: roudedBox(color: AppColors.bank_card_bg),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titleTextStyle('Federal Bank'),
            smallTextStyle('2132323213123'),
            VerticalSpace(height: 10),
            mediumTextStyle('16,4545')
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        decoration: roudedBox(color: AppColors.bank_card_bg),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titleTextStyle('Federal Bank'),
            smallTextStyle('2132323213123'),
            VerticalSpace(height: 10),
            mediumTextStyle('16,4545')
          ],
        ),
      ),
    ],
  );
}
