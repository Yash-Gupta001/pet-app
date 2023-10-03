

// user_screen.dart
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text("User Screen"),
      ),
      body: Center(
        child: Text(
          "This is the User Screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
