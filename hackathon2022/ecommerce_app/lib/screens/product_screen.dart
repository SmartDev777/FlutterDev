import 'package:flutter/material.dart';

import '../widgets/app_widgets.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          cartHeader(),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: 10,
                itemBuilder: (BuildContext ctx, index) {
                  return Card(
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.all(20),
                            child: Image.asset(
                              'assets/images/product.png',
                              width: 150.0,
                              height: 150.0,
                              fit: BoxFit.cover,
                            )),
                        Row(
                          children: [
                            Expanded(
                              child: appPrimaryText('\$24.99'),
                            ),
                            Icon(Icons.heart_broken)
                          ],
                        ),
                        appDescText('White strap plunge top'),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20.0,
                              backgroundImage:
                                  AssetImage('assets/images/circle_img.png'),
                              backgroundColor: Colors.transparent,
                            ),
                            appDescText('Williamn'),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
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
