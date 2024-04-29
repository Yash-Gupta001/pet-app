import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:basics/upi_payment_screen.dart';

class AddressScreen extends StatelessWidget {
  final num order;
  final String packageName;
  final String packagePrice;
  final String packageDetails;

  AddressScreen({
    required this.order,
    required this.packageName,
    required this.packagePrice,
    required this.packageDetails,
  });

  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery location'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Corrected spelling
          children: [
            Text('Order: $order'),
            Text('Package Name: $packageName'),
            Text('Package Price: ₹$packagePrice'),
            Text('Package Details: $packageDetails'),
            const SizedBox(height: 20),
            const Text(
              'Enter Your Information:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: emailAddressController,
              decoration: InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: contactNumberController,
              decoration: const InputDecoration(
                labelText: 'Contact Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: addressController,
              decoration: const InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => UpiPaymentScreen(
                      order: order,
                      packageName: packageName,
                      packagePrice: packagePrice,
                      packageDetails: packageDetails,
                    ),
                  ),
                );
              },
              child: const Text('Purchase'),
            ),
          ],
        ),
      ),
    );
  }
}

class Toy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        title: const Text(
          'Toys',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16), // Required padding added
        children: [
          buildProductCard(
            context,
            'Bolt Laser',
            'bolt_laser_electric_toy.jpg', // File name for Firebase Storage
            1999,
            packageDetails: "Laser toy for cats",
          ),
          buildProductCard(
            context,
            'Big Ball',
            'big_ball.jpg',
            1000,
            packageDetails: "A large ball for dogs",
          ),
          buildProductCard(
            context,
            'Food Dispenser Ball',
            'food_dispenser_ball.jpg',
            390,
            packageDetails: "A ball that dispenses food",
          ),
          
//add more



        ],
      ),
    );
  }

  Widget buildProductCard(
    BuildContext context,
    String productName,
    String productImageFileName,
    double productPrice,
    {required String packageDetails}
  ) {
    return FutureBuilder<String>(
      future: getDownloadUrl(productImageFileName), // Fetching URL from Firebase Storage
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator()); // Loading spinner
        } else if (snapshot.hasError) {
          return Center(child: Text('Error loading image')); // Error handling
        } else {
          final imageUrl = snapshot.data!;
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddressScreen(
                    order: 1, // Example order number
                    packageName: productName,
                    packagePrice: productPrice.toString(),
                    packageDetails: packageDetails,
                  ),
                ),
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      imageUrl, // Display image from Firebase Storage
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    //const EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '₹$productPrice',
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  Future<String> getDownloadUrl(String fileName) async {
    try {
      return await FirebaseStorage.instance
        .ref('toy/$fileName') // Correct folder in Firebase Storage
        .getDownloadURL(); // Fetch the download URL
    } catch (e) {
      throw Exception("Error fetching URL: $e"); // Handle errors
    }
  }
}
