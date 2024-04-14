import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
  final List<Widget> _screens = [
    HomeScreen(),
    PackageScreen(),
    ProductScreen(),
    UserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.amber,
        buttonBackgroundColor: Colors.amber,
        height: 60,
        animationDuration: const Duration(milliseconds: 200),
        animationCurve: Curves.easeInOut,
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: _currentIndex == 0 ? Colors.white : Colors.black,
          ),
          Icon(
            Icons.all_inclusive,
            size: 30,
            color: _currentIndex == 1 ? Colors.white : Colors.black,
          ),
          Icon(
            Icons.shop_sharp,
            size: 30,
            color: _currentIndex == 2 ? Colors.white : Colors.black,
          ),
          Icon(
            Icons.verified_user,
            size: 30,
            color: _currentIndex == 3 ? Colors.white : Colors.black,
          ),
        ],
      ),
    );
  }
}
