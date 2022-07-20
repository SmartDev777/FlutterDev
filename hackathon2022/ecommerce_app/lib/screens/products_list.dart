import 'package:ecommerce_app/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/app_widgets.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // cartHeader(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return cardItem();
                }),
          ),
        ],
      ),
    ));
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

cardItem() {
  return Card(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          ListTile(
            leading: appCircleImage('circle_img.png'),
            title: Text(
              "Hawain Shirt",
              style: TextStyle(color: Colors.black, fontFamily: 'Raleway'),
            ),
            subtitle: Text("Snaday Williams"),
            trailing: Container(
              width: 100,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.heart_broken,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  appSecondaryText('2.3')
                ],
              ),
            ),
          ),
          appDescText(
              'If you are looking for the latest and the most stylish Pakistan lawn collection 2018 with chiffon dupatta, you have come at the right place as Alkaram has brought fully embroidered lawn suits with chiffon and sleeves in its wide range of stitched and unstitched lawn suits.'),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/main.png',
                width: 150.0,
                height: 150.0,
                // fit: BoxFit.cover,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  shrinkWrap: true,
                  children: [
                    Image.asset(
                      'assets/images/1.png',
                      width: 50.0,
                      height: 50.0,
                      // fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/2.png',
                      width: 50.0,
                      height: 50.0,
                      // fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/3.png',
                      width: 50.0,
                      height: 50.0,
                      // fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/4.png',
                      width: 50.0,
                      height: 50.0,
                      // fit: BoxFit.cover,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    appSimpleRoundedButton('#Summer', () {}),
                    SizedBox(
                      width: 10,
                    ),
                    appSimpleRoundedButton('#Purple', () {})
                  ],
                ),
              ),
              Icon(
                Icons.share,
                color: AppColors.secondary_textcolor,
              ),
              SizedBox(
                width: 5,
              ),
              appSecondaryText('2.3')
            ],
          )
        ],
      ),
    ),
  );
}
