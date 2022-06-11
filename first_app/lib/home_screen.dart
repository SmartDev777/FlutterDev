import 'package:first_app/app_assets.dart';
import 'package:first_app/app_colors.dart';
import 'package:first_app/app_widgets.dart';
import 'package:first_app/balance_screen.dart';
import 'package:first_app/notification_screen.dart';
import 'package:first_app/offer_screen.dart';
import 'package:first_app/reward_screen.dart';
import 'package:flutter/material.dart';

import 'app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.app_bg_color,
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    text: "Home",
                  ),
                  Tab(
                    text: "Balance",
                  ),
                  Tab(
                    text: "Offers",
                  ),
                  Tab(
                    text: "Rewards",
                  ),
                ],
              ),
            ),
            backgroundColor: AppColors.app_bg_color,
            body: TabBarView(
              children: [
                getHomeView(context),
                Balancescreen(),
                OfferScreen(),
                RewardScreen()
              ],
            )),
      ),
    );
  }

  getHomeView(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          homeHeader(context),
          titleView(AppStrings.home_title_money),
          GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 5,
            // crossAxisSpacing: 30,
            childAspectRatio: 4.0,
            // scrollDirection: Axis.horizontal,
            crossAxisCount: 2,
            children: [
              homeView(
                  AppColors.container_qrcode_bg_light_color,
                  AppColors.container_qrcode_bg_color,
                  Icons.qr_code_scanner,
                  AppStrings.home_menu_scan_qr),
              homeView(
                  AppColors.container_qrcode_bg_light_color,
                  AppColors.container_qrcode_bg_color,
                  Icons.qr_code_scanner,
                  AppStrings.home_menu_scan_qr),
              homeView(
                  AppColors.container_qrcode_bg_light_color,
                  AppColors.container_qrcode_bg_color,
                  Icons.qr_code_scanner,
                  AppStrings.home_menu_scan_qr),
              homeView(
                  AppColors.container_qrcode_bg_light_color,
                  AppColors.container_qrcode_bg_color,
                  Icons.qr_code_scanner,
                  AppStrings.home_menu_scan_qr),
            ],
          ),
          titleView(AppStrings.home_title_recharge),
          GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 5,
            // crossAxisSpacing: 30,
            childAspectRatio: 4.0,
            // scrollDirection: Axis.horizontal,
            crossAxisCount: 2,
            children: [
              homeView(
                  AppColors.container_qrcode_bg_light_color,
                  AppColors.container_qrcode_bg_color,
                  Icons.qr_code_scanner,
                  AppStrings.home_menu_scan_qr),
              homeView(AppColors.s_contact_colors, AppColors.l_contact_colors,
                  Icons.qr_code_scanner, AppStrings.home_menu_scan_qr),
              homeView(AppColors.s_bank_colors, AppColors.l_bank_colors,
                  Icons.qr_code_scanner, AppStrings.home_menu_scan_qr),
              homeView(
                  AppColors.container_qrcode_bg_light_color,
                  AppColors.container_qrcode_bg_color,
                  Icons.qr_code_scanner,
                  AppStrings.home_menu_scan_qr),
            ],
          ),
          VerticalSpace(),
          titleTextStyle(AppStrings.home_title_ticket_booking),
          ticketBookingMenu(),
          titleTextStyle(AppStrings.home_title_services),
          moreServicesMenu(),
          titleTextStyle(AppStrings.home_title_transaction),
          recentTransactions()
        ],
      ),
    );
  }

  ticketBookingMenu() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 5,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 13),
                  padding: EdgeInsets.all(20),
                  decoration: roudedBox(color: AppColors.icon_bg_color),
                  child: Image.asset(AppAssets.icon_video),
                ),
                VerticalSpace(height: 5),
                smallTextStyle('Movies')
              ],
            );
          }),
    );
  }

  moreServicesMenu() {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 5,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 13),
                  padding: EdgeInsets.all(20),
                  decoration: roudedBox(color: AppColors.icon_bg_color),
                  child: Image.asset(AppAssets.icon_video),
                ),
                VerticalSpace(height: 5),
                smallTextStyle('Movies')
              ],
            );
          }),
    );
  }

  recentTransactions() {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 5,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 90.0,
              height: 90.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: new AssetImage(AppAssets.img_profile))),
            );
          }),
    );
  }

  homeView(smallColor, largeColor, icon, title) {
    //Home Container
    return Stack(
      children: [
        Container(
          height: 53,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0), color: largeColor),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 12,
                  color: AppColors.large_text_color,
                  fontFamily: AppStrings.app_font),
            ),
          )),
        ),
        Container(
          height: 53,
          width: 48,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0), color: smallColor),
          child: Icon(
            Icons.qr_code_scanner,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  titleView(title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          titleTextStyle(title),
          Container(
              padding: EdgeInsets.all(5),
              decoration: roudedBox(),
              child: Row(
                children: [
                  smallTextStyle('More'),
                  HorizontalSpace(w: 10),
                  Icon(
                    Icons.arrow_forward,
                    size: 15,
                  )
                ],
              ))
        ],
      ),
    );
  }

  Container homeHeader(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(AppAssets.img_profile),
          ),
          HorizontalSpace(),
          Expanded(
            child: TextField(
              decoration: getInputDecoration(
                  AppStrings.home_hint_search, AppAssets.icon_search),
            ),
          ),
          HorizontalSpace(),
          CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.container_bg_color,
            // backgroundImage: AssetImage(AppAssets.icon_notification),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationScreen()),
                );
              },
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
          )
        ],
      ),
    );
  }
}
