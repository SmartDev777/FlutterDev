import 'package:ecommerce_app/app_colors.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/product_screen.dart';
import 'package:ecommerce_app/screens/products_list.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/app_widgets.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: AppColors.primary_color,
            indicatorColor: AppColors.primary_color,
            unselectedLabelColor: AppColors.secondary_textcolor,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(fontStyle: FontStyle.italic),
            tabs: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Women'),
              ),
              Text('Men'),
              Text('Children'),
            ],
          ),
          title: cartHeader(),
          backgroundColor: Colors.white,
        ),
        body: TabBarView(
            physics: BouncingScrollPhysics(),
            dragStartBehavior: DragStartBehavior.down,
            children: [ProductView(), ProductView(), ProductView()]),
      ),
    );
  }
}

cartHeader() {
  return Container(
    child: Row(
      children: [
        Expanded(child: appBorderTextField("Search", Icons.search)),
        SizedBox(
          width: 20,
        ),
        appCircleImage('profile_img.png')
      ],
    ),
  );
}
