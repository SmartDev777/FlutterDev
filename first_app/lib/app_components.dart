import 'package:first_app/app_colors.dart';
import 'package:first_app/app_strings.dart';
import 'package:flutter/material.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.app_bg_color,
      body: Column(
        children: [
          // for Edittext filed
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.hint_container_bg_color),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "+92",
                    style: TextStyle(
                        color: AppColors.hint_text_color,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: AppStrings.hint_text_number,
                        fillColor: AppColors.hint_container_bg_color,
                        labelStyle: TextStyle(
                            color: AppColors.medium_text_color,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        // border: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(30))
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 50,
          ),
          // for rounded button

          SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // <-- Radius
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    AppStrings.btn_verify,
                    style: TextStyle(fontSize: 25),
                  ))),

          // Notification list
          ListTile(
            title: Text(
              "Recharge Complete",
              style: TextStyle(
                  color: AppColors.large_text_color,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "how are you what are you doing here goood to know about it",
                  style: TextStyle(
                    color: AppColors.medium_text_color,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "May 12 2022 12:34",
                  style: TextStyle(
                    color: AppColors.medium_text_color,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            trailing: CircleAvatar(
              backgroundColor: AppColors.container_bg_color,
              child: Icon(
                Icons.notifications_active,
                color: Colors.deepPurple,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.container_bg_color),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  title: Text(
                    "All Transactions",
                    style: TextStyle(
                        color: AppColors.large_text_color,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(Icons.arrow_forward, color: Colors.white),
                ),
                ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  title: Text(
                    "All Transactions",
                    style: TextStyle(
                        color: AppColors.large_text_color,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          //Home Container
          Stack(
            children: [
              Container(
                height: 43,
                width: 165,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: AppColors.container_qrcode_bg_color),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    AppStrings.home_menu_scan_qr,
                    style: TextStyle(color: Colors.white),
                  ),
                )),
              ),
              Container(
                height: 43,
                width: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: AppColors.container_qrcode_bg_light_color),
                child: Icon(
                  Icons.qr_code_scanner,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
