import 'package:flutter/material.dart';
import '../authentication/phone.dart';

//import 'package:basics/authentication/phone.dart';

class UserScreen extends StatelessWidget {
  @override

  late String? name,phone;

UserScreen({ this.name, this.phone});

  Widget build(BuildContext context) {
    
return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: const Text(
          "USER",
          style: TextStyle(
            color: Colors.white,
            backgroundColor: Colors.amber,
            fontSize: 28,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Name: YASH',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Phone no.: 8805570037',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyPhone()),
              );
            },
            child: const Text('LogOut'),
          ),
        ],
      ),
    );
  }
}
