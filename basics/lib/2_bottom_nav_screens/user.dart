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
        toolbarHeight: 80,
        title: const Text(
          "USER",
          style: TextStyle(
            color: Colors.black,
            backgroundColor: Colors.amber,
            fontSize: 28,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Name: YASH',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Phone no.: 8805570037',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyPhone()),
                  );
                },
                child: const Text('Log Out'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}