import 'package:first_app/app_colors.dart';
import 'package:first_app/app_strings.dart';
import 'package:first_app/app_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_assets.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.app_bg_color,
      body: SafeArea(
        child: Container(
          height: 550,
          decoration:
              roudedBox(color: AppColors.container_notification_bg_color),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    titleTextStyle(AppStrings.notification_title),
                    Icon(
                      Icons.close,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              NotificationList()
            ],
          ),
        ),
      ),
    );
  }
}

NotificationList() {
  return Expanded(
    child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return // Notification list
              ListTile(
            title: Text(
              "Recharge Complete",
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
                  Text(
                    "how are you what are you doing here good to know about it",
                    style: TextStyle(
                      color: AppColors.medium_text_color,
                      fontSize: 14,
                      fontFamily: AppStrings.app_font,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "May 12 2022 12:34",
                    style: TextStyle(
                      color: AppColors.medium_text_color,
                      fontSize: 12,
                      fontFamily: AppStrings.app_font,
                    ),
                  )
                ],
              ),
            ),
            trailing: CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.container_bg_color,
              // backgroundImage: AssetImage(AppAssets.icon_notification),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Positioned(
                    child: CircleAvatar(
                      radius: 3,
                      backgroundColor: AppColors.btn_bg_dark,
                    ),
                    right: 3,
                  ),
                  Image.asset(AppAssets.icon_notification),
                ],
              ),
            ),
          );
        }),
  );
}
