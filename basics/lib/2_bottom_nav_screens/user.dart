import 'package:flutter/material.dart';
//import 'package:basics/authentication/phone.dart';

class UserScreen extends StatelessWidget {
  @override

  late String? name,phone;


UserScreen({ this.name, this.phone});

  Widget build(BuildContext context) {
    
return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text("User Screen"),
      ),
      body:const Column(
        children: [
          Text('Name: YASH'),
          Text('Phone no.: 8805570037'),
        ],
      ),
      
    );
  }
}
