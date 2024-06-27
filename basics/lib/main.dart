import 'dart:async';
import 'package:basics/root_bottomnavigation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'authentication/phone.dart';
import 'authentication/verify.dart';
import '2_bottom_nav_screens/home.dart';
import '2_bottom_nav_screens/package.dart';
import '2_bottom_nav_screens/user.dart';
import 'package:basics/navigation/map.dart';


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
      initialRoute: 'navigation',
      routes: {
        'map': (context) =>  Mapscreen(),
        'phone': (context) => const MyPhone(),
        'otp': (context) => const MyVerify(),
        'home': (context) => HomeScreen(),
        'packages': (context) => PackageScreen(),
        'user': (context) => UserScreen(),
        'navigation': (context) => const RootBottomNavigation(),
        'splash': (context) => SplashScreenWidget(),
      },
      home: RootBottomNavigation(),
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
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyPhone()),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,

      body:
      Center(
        child: Image.asset(
          'assets/splash.jpg',  
          width: 500,  
          height: 400,
        ),
      ),
    );
  }
}