import 'dart:async';
import 'package:basics/root_bottomnavigation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'phone.dart';
import 'verify.dart';
import 'home.dart';
import 'package.dart';
import 'user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amber,
        ),
      ),
      initialRoute: 'splash',
      routes: {
        'phone': (context) => MyPhone(),
        'otp': (context) => MyVerify(),
        'home': (context) => HomeScreen(),
        'packages': (context) => PackageScreen(),
        'user': (context) => UserScreen(),
        'navigation': (context) => RootBottomNavigation(),
        'splash': (context) => SplashScreenWidget(),
      },
      // Set the splash screen as the home screen.
      home: const RootBottomNavigation(), // Use a different name for the SplashScreen widget.
    );
  }
}

class SplashScreenWidget extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenWidget> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate the splash screen for 2 seconds.
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyPhone()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,

      body:
      Center(
        // Use the Image.asset widget to display the image.
        child: Image.asset(
          'assets/splash.jpg',  
          width: 500,  
          height: 400,
        ),
      ),
    );
  }
}
