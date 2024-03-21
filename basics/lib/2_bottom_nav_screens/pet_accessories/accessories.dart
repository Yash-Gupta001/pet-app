import 'package:flutter/material.dart';

class Accessories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        //toolbarOpacity: 0.3,
        automaticallyImplyLeading: false,
        title: const Text(
          'Accessories',
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
