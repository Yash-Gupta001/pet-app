import 'package:flutter/material.dart';
import '../upi_payment_screen.dart';
import 'package:basics/navigation/map.dart';
//import 'package:'


class PackageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text("Packages"),
        actions: [
          IconButton(
            onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Mapscreen(),
                      ),
                    );
                  },
            icon: const Icon(Icons.location_on),
          ),
        ],
        centerTitle: true,
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
                      builder: (context) => const UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 1D",
                        packagePrice: '\u20B9 150',
                        packageDetails:
                            "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 1D",
                  packagePrice: '\u20B9 150',
                  packageDetails:
                      "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 3D",
                        packagePrice: '\u20B9 350',
                        packageDetails:
                            "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 3D",
                  packagePrice: '\u20B9 350',
                  packageDetails:
                      "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 5D",
                        packagePrice: '\u20B9 600',
                        packageDetails:
                            "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 5D",
                  packagePrice: '\u20B9 600',
                  packageDetails:
                      "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 7D",
                        packagePrice: '\u20B9 900',
                        packageDetails:
                            "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 7D",
                  packagePrice: '\u20B9 900',
                  packageDetails:
                      "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 10D",
                        packagePrice: '\u20B9 1350',
                        packageDetails:
                            "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 10D",
                  packagePrice: '\u20B9 1350',
                  packageDetails:
                      "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 15D",
                        packagePrice: '\u20B9 2000',
                        packageDetails:
                            "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 15D",
                  packagePrice: '\u20B9 2000',
                  packageDetails:
                      "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 20D",
                        packagePrice: '\u20B9 2650',
                        packageDetails:
                            "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 20D",
                  packagePrice: '\u20B9 2650',
                  packageDetails:
                      "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Navigate to UpiPaymentScreen and pass package details.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const UpiPaymentScreen(
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 30D",
                        packagePrice: '\u20B9 3950',
                        packageDetails:
                            "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                      ),
                    ),
                  );
                },
                child: PackageCard(
                  packageName: "Day Care- 30D",
                  packagePrice: '\u20B9 3950',
                  packageDetails:
                      "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
                ),
              ),
              const SizedBox(height: 10),
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
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              packageName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              "Price: $packagePrice",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              "Details: $packageDetails",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
