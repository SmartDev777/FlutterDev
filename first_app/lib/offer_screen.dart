import 'package:first_app/app_assets.dart';
import 'package:first_app/app_colors.dart';
import 'package:first_app/app_widgets.dart';
import 'package:flutter/material.dart';

import 'app_strings.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.app_bg_color,
      body: SafeArea(
        child: Container(
          child: OfferList(),
        ),
      ),
    );
  }
}

OfferList() {
  return Expanded(
    flex: 1,
    child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 15,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return // Notification list
              Card(
            color:
                index % 2 == 0 ? AppColors.offer_color : AppColors.offer_color1,
            child: ListTile(
              contentPadding: EdgeInsets.all(20),
              leading: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    AppAssets.img_offer_bg,
                    fit: BoxFit.fitWidth,
                    height: 60,
                    width: 60,
                  ),
                  Image.asset(
                    AppAssets.img_offer,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
              title: Text(
                "Mobile Recharge Offer",
                style: TextStyle(
                    color: AppColors.large_text_color,
                    fontSize: 16,
                    fontFamily: AppStrings.app_font,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    mediumTextStyle('Use Code First20'),
                    VerticalSpace(height: 5),
                    smallTextStyle(
                      "Get 20 % Instant cashback upto Rs 50 on your firs mobile recharge. T&C apply",
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
  );
}
