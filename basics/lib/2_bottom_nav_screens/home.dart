import 'package:flutter/material.dart';
import 'package:basics/1_home_screens/Food.dart';
import 'package:basics/1_home_screens/Habitat.dart';
import 'package:basics/1_home_screens/Hair.dart';
import 'package:basics/1_home_screens/Weight.dart';
import 'package:basics/1_home_screens/Exercise.dart';
import 'package:basics/1_home_screens/Aggressive.dart';

class HomeScreen extends StatelessWidget {
  final List<String> titles = [
    "Pet Food",
    "Habitat",
    "Hair",
    "Exercise",
    "Weight Management",
    "Aggression Control",
  ];

  final List<String> images = [
    'assets/food.avif',
    'assets/habitat.avif',
    'assets/hairs.jpg',
    'assets/exercise.jfif',
    'assets/fatty.jpg',
    'assets/Anger.jpg',
  ];

  final List<Widget> screens = [
    Food(),
    Habitat(),
    Hair(),
    Exercise(),
    Weight(),
    Aggressive(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text(
          "Furniwas",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.amber,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 1.0,
          ),
          itemCount: titles.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        screens[index],
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      var begin = Offset(1.0, 0.0);
                      var end = Offset.zero;
                      var curve = Curves.easeInOut;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));

                      return SlideTransition(
                        position: animation.drive(tween),
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 300), // Adjust animation duration
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        titles[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
