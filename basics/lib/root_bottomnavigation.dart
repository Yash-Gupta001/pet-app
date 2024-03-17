

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import '2_bottom_nav_screens/home.dart';
import '2_bottom_nav_screens/package.dart';
import '2_bottom_nav_screens/user.dart';
import '2_bottom_nav_screens/product.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({Key? key}) : super(key: key);

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: [
        HomeScreen(),
        PackageScreen(),
        ProductScreen(),
        UserScreen(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black, 
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.all_inclusive), label: 'Day-care'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop_sharp), label: 'product'),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), label: 'user'),
        ],
      ),
    );
  }
}
