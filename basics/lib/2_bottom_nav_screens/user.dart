import 'package:basics/authentication/verify.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text("User Screen"),
      ),
      body: const Center(
        child: Text(
          "This is the User Screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
