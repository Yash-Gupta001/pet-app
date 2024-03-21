import 'package:flutter/material.dart';

class Medicine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        //toolbarOpacity: 0.3,
        automaticallyImplyLeading: false,
        title: const Text(
          'Medicine',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(), // Add your body content here
    );
  }
}