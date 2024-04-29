// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable, use_key_in_widget_constructors
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:basics/upi_payment_screen.dart';

class Accessories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          buildProductCard(
            context,
            'Mouth Cover muzzles',
            'mouth.webp', // Updated to relative path
            2490,
          ),
          buildProductCard(
            context,
            'Hair Brush',
            'hair_brush.webp',
            450,
          ),
          buildProductCard(
            context,
            'Portable Bed',
            'portable_bed.webp',
            1800,
          ),
          buildProductCard(
            context,
            'Dog Harness',
            'harness.jpg',
            990,
          ),
          buildProductCard(
            context,
            'Dog leash',
            'leash.jpg',
            340,
          ),
          buildProductCard(
            context,
            'Retractable Dog Leash',
            'retratable_leash.webp',
            720,
          ),
          buildProductCard(
            context,
            'Food Bowl 700ml',
            'bowl.webp',
            270,
          ),
        ],
      ),
    );
  }

  Widget buildProductCard(
    BuildContext context,
    String productName,
    String productImageFileName,
    double productPrice,
  ) {
    return FutureBuilder<String>(
      future: getDownloadUrl(productImageFileName), // Fetching URL from Firebase Storage
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error loading image'));
        } else {
          final imageUrl = snapshot.data!;
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(
                    productName: productName,
                    productImage: imageUrl, // Pass correct image URL
                    productPrice: productPrice,
                  ),
                ),
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Image.network(
                  imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(productName),
                subtitle: Text('₹$productPrice'),
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
          .ref('accessories/$fileName') // Correct folder in Firebase Storage
          .getDownloadURL(); // Fetch the download URL
    } catch (e) {
      throw Exception("Error fetching URL: $e");
    }
  }
}

class ProductDetailScreen extends StatelessWidget {
  final String productName;
  final String productImage; // Download URL from Firebase Storage
  final double productPrice;

  ProductDetailScreen({
    required this.productName,
    required this.productImage,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              productImage,
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),
            Text(
              productName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '₹$productPrice',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddressScreen(
                      order: 1, 
                      packageName: productName,
                      packageDetails: 'Some details here',
                      productPrice: productPrice,
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

class AddressScreen extends StatelessWidget {
  final num order;
  final String packageName;
  final String packageDetails;
  final double productPrice; // Added productPrice variable

  AddressScreen({
    required this.order,
    required this.packageName,
    required this.packageDetails,
    required this.productPrice,
  });

  TextEditingController emailAddressController = TextEditingController();
  TextEditingController contactNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery location'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Order: $order'),
              Text('Package Name: $packageName'),
              Text('Package Details: $packageDetails'),
              const SizedBox(height: 20),
              const Text(
                'Enter Your Information:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: emailAddressController,
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: contactNumberController,
                decoration: const InputDecoration(
                  labelText: 'Contact Number',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: addressController,
                decoration: const InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UpiPaymentScreen(
                        order: order,
                        packageName: packageName,
                        packagePrice: productPrice.toString(),
                        packageDetails: packageDetails,
                      ),
                    ),
                  );
                },
                child: const Text('Buy'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}