import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:basics/upi_payment_screen.dart';

class Medicine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Medicine',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        toolbarHeight: 45,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          buildProductCard(
            context,
            'Alfalfa tonic which helps relieve loss of appetite',
            'alfalfa.jpg',
            250,
            packageDetails: 'Useful for increasing appetite.',
          ),
          buildProductCard(
            context,
            'Diarrhoea tablets',
            'diarrhoea.jpg',
            90,
            packageDetails: 'For relief from diarrhoea.',
          ),
          buildProductCard(
            context,
            'Drop for excessive thirst',
            'drop.avif',
            100,
            packageDetails: 'Helps control excessive thirst.',
          ),
          buildProductCard(
            context,
            'Ear drop',
            'Ear_drop.jpg',
            130,
            packageDetails: 'Ear drops for pain relief.',
          ),
          buildProductCard(
            context,
            'Wound lotion',
            'himax_lotion.jpg',
            684,
            packageDetails: 'Lotion for treating wounds.',
          ),
          buildProductCard(
            context,
            'Joint Tablets',
            'joint-tablet.webp',
            180,
            packageDetails: 'Tablets to support joint health.',
          ),
          buildProductCard(
            context,
            'Liv 52 metabolism simulation',
            'liv52.jpg',
            350,
            packageDetails: 'Improves metabolism.',
          ),
          buildProductCard(
            context,
            'Multivitamin for pets',
            'pet-vit.jpg',
            350,
            packageDetails: 'Multivitamin supplements for pets.',
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
    {required String packageDetails}
  ) {
    return FutureBuilder<String>(
      future: getDownloadUrl(productImageFileName), // Fetching URL from Firebase Storage
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error loading image'));
        } else {
          final imageUrl = snapshot.data!;
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(
                    productName: productName,
                    productImage: imageUrl, 
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch, // Corrected property
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Corrected property
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
          .ref('medicine/$fileName') 
          .getDownloadURL(); // Fetch the download URL
    } catch (e) {
      throw Exception("Error fetching URL: $e");
    }
  }
}

class ProductDetailScreen extends StatelessWidget {
  final String productName;
  final String productImage; // Correct download URL from Firebase Storage
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
                      order: 1, // Example order number
                      packageName: productName, // Correct variable name
                      packageDetails: 'To be defined', // Adjusted as needed
                      productPrice: productPrice, // Corrected type
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
  final int order;
  final String packageName; // Corrected variable name
  final String packageDetails;
  final double productPrice; // Corrected type

  AddressScreen({
    required this.order,
    required this.packageName,
    required this.packageDetails,
    required this.productPrice,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
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
                  labelText: 'address',
                  border: OutlineInputBorder(),
                ),
              //  decoration: TextFormField(),
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
