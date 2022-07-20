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
                children: [Text('people'), Text('Person')],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
