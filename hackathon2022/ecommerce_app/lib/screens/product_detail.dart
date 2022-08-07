import 'package:ecommerce_app/app_colors.dart';
import 'package:ecommerce_app/screens/payment_success.dart';
import 'package:ecommerce_app/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class productDetail extends StatefulWidget {
  @override
  productDetailState createState() => productDetailState();
}

class productDetailState extends State<productDetail>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    controller = new PageController(
      viewportFraction: 0.8,
    );

    super.initState();
  }

  // variable controller
  var controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: PageView(
                controller: controller,
                children: [
                  Image.asset('assets/images/main.png'),
                  Image.asset('assets/images/main.png'),
                  Image.asset('assets/images/main.png'),
                ],
              ),
              color: Colors.blue,
            ),
            Container(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: JumpingDotEffect(),
              ),
            ),
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.red,
              tabs: [
                Tab(
                  child: Text('info'),
                ),
                Tab(
                  child: Text('Measurement'),
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  getMeasurmentView(),
                  Text('Product is good for use try it once')
                ],
                controller: _tabController,
              ),
            ),
            CartbottomView(context)
          ],
        ),
      ),
    );
  }
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
      appRoundedButton("Add to bag", () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PaymentSuccessScreen()),
        );
      }),
    ],
  );
}

getMeasurmentView() {
  return Row(
    children: [
      Expanded(
        child: getView('Height', '45'),
      ),
      Expanded(
        child: getView('Waist', '35'),
      ),
      Expanded(
        child: getView('Breadth', '35'),
      )
    ],
  );
}

getView(lable, hint) {
  return Column(
    children: [Text(lable), appBorderTextFieldNoIcon('45')],
  );
}
