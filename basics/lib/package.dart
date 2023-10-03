


import 'package:flutter/material.dart';
import 'upi_payment_screen.dart';



class PackageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text("Packages"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              


              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 1D",
                        packagePrice: '\u20B9 150',
                        packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 1D",
                  packagePrice: '\u20B9 150',
                  packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              SizedBox(height: 10),
              


              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 3D",
                        packagePrice: '\u20B9 350',
                        packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 3D",
                  packagePrice: '\u20B9 350',
                  packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              SizedBox(height: 10),


              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 5D",
                        packagePrice: '\u20B9 600',
                        packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 5D",
                  packagePrice: '\u20B9 600',
                  packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              SizedBox(height: 10),


              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 7D",
                        packagePrice: '\u20B9 900',
                        packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 7D",
                  packagePrice: '\u20B9 900',
                  packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              SizedBox(height: 10),


              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 10D",
                        packagePrice: '\u20B9 1350',
                        packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 10D",
                  packagePrice: '\u20B9 1350',
                  packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              SizedBox(height: 10),


              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 15D",
                        packagePrice: '\u20B9 2000',
                        packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 15D",
                  packagePrice: '\u20B9 2000',
                  packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              SizedBox(height: 10),


              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 20D",
                        packagePrice: '\u20B9 2650',
                        packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 20D",
                  packagePrice: '\u20B9 2650',
                  packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              SizedBox(height: 10),


              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 30D",
                        packagePrice: '\u20B9 3950',
                        packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 30D",
                  packagePrice: '\u20B9 3950',
                  packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              SizedBox(height: 10),



            ],
          ),
        ),
      ),
    );
  }
}




class PackageCard extends StatelessWidget {
  final String packageName;
  final String packagePrice;
  final String packageDetails;

  PackageCard({
    required this.packageName,
    required this.packagePrice,
    required this.packageDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              packageName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Price: $packagePrice",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              "Details: $packageDetails",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

