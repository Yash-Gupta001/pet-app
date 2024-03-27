import 'package:flutter/material.dart';
import 'package:basics/authentication/phone.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    if (arguments == null) {
      // Handle the case where arguments are null
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('No data provided'),
        ),
      );
    }

    final String name = arguments['name'] ?? "";
    final String phone = arguments['phone'] ?? "";

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text("User Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Name: $phone.name",
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              "Phone: $phone.phone",
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
