import 'package:ecommerce_app/app_colors.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:ecommerce_app/screens/payment_success.dart';
import 'package:ecommerce_app/widgets/app_widgets.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    HomeMain(),
    CartScreen(),
    PaymentSuccessScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedLabelStyle: TextStyle(color: AppColors.secondary_textcolor),
        unselectedIconTheme:
            IconThemeData(color: AppColors.secondary_textcolor, size: 20),
        selectedIconTheme:
            IconThemeData(color: AppColors.primary_color, size: 40),
        selectedItemColor: AppColors.primary_color,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: 'Setting',
          // ),
        ],
      ),
    );
  }
}
