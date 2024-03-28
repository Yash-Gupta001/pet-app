import 'package:flutter/material.dart';
import 'package:basics/1_home_screens/Food.dart';
import 'package:basics/1_home_screens/Habitat.dart';
import 'package:basics/1_home_screens/Hair.dart';
import 'package:basics/1_home_screens/Weight.dart';
import 'package:basics/1_home_screens/Exercise.dart';
import 'package:basics/1_home_screens/Aggressive.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text(
          "Furniwas",
          style: TextStyle(
            color: Colors.white,
            backgroundColor: Colors.amber,
            fontSize: 28,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "Pet Care tips",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ),
            ),

            // Food Screen
            const SizedBox(
              height: 10,
            ),
            _buildTransitionContainer(
              context,
              screenWidth,
              'assets/food.avif',
              'Pet Food',
              Food(),
            ),

            // Habitat Screen
            const SizedBox(
              height: 25,
            ),
            _buildTransitionContainer(
              context,
              screenWidth,
              'assets/habitat.avif',
              'Habitat',
              Habitat(),
            ),

            // Hair Screen
            const SizedBox(
              height: 25,
            ),
            _buildTransitionContainer(
              context,
              screenWidth,
              'assets/hairs.jpg',
              'Hair',
              Hair(),
            ),

            // Exercise Screen
            const SizedBox(
              height: 25,
            ),
            _buildTransitionContainer(
              context,
              screenWidth,
              'assets/exercise.jfif',
              'Exercise',
              Exercise(),
            ),

            // Weight Management Screen
            const SizedBox(
              height: 25,
            ),
            _buildTransitionContainer(
              context,
              screenWidth,
              'assets/fatty.jpg',
              'Weight Management',
              Weight(),
            ),

            // Aggression Control Screen
            const SizedBox(
              height: 25,
            ),
            _buildTransitionContainer(
              context,
              screenWidth,
              'assets/Anger.jpg',
              'Aggression Control',
              Aggressive(),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransitionContainer(BuildContext context, double screenWidth, String imageUrl, String text, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => screen,
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              var begin = const Offset(1.0, 0.0);
              var end = Offset.zero;
              var curve = Curves.easeInOut;
              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 180,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
