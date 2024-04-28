import 'package:flutter/material.dart';
import 'package:basics/upi_payment_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';
//import 'package:image_picker/image_picker.dart';

class Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        title: const Text(
          'FOOD',
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
          buildProductCard(context, 'Pedigree 10kg', 'Pedigree.jpg', 2490),
          buildProductCard(context, 'PedigreePro 1.2kg', 'PedigreePro.webp', 458),
          buildProductCard(context, 'Henlo Dry', 'Henlo_Dry_Food.webp', 39.99),
          buildProductCard(context, 'Royal Canin', 'Royalcanin.webp', 990),
          buildProductCard(context, 'Canine Greek', 'canine.webp', 684),
          buildProductCard(context, 'Dog Bikkit', 'dog-bikkit.webp', 320),
          buildProductCard(context, 'Puppy Snacks', 'Puppy_Snacks.webp', 250),
        ],
      ),
    );
  }

  Widget buildProductCard(BuildContext context, String productName, String productImage, double productPrice) {
    return FutureBuilder<String>(
      future: getImageUrl(productImage), // Retrieve the image URL from Firebase Storage
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailScreen(
                      productName: productName,
                      productImage: snapshot.data!, // Use the Firebase Storage URL
                      productPrice: productPrice,
                    ),
                  ),
                );
              },
              child: Card(
                child: ListTile(
                  leading: Image.network(
                    snapshot.data!,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(productName),
                  subtitle: Text('₹$productPrice'),
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Text("Error loading image: ${snapshot.error}");
          }
        }

        return const Center(child: CircularProgressIndicator()); // Loading indicator
      },
    );
  }

  Future<String> getImageUrl(String imageName) async {
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child('food/$imageName'); // Ensure this path is correct
    String url = await ref.getDownloadURL();
    return url;
  }
}

class ProductDetailScreen extends StatelessWidget {
  final String productName;
  final String productImage;
  final double productPrice;

  const ProductDetailScreen({
    Key? key,
    required this.productName,
    required this.productImage,
    required this.productPrice,
  }) : super(key: key);

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
            FutureBuilder<String>(
              future: getImageUrl(productImage),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    return Image.network(
                      snapshot.data!,
                      width: 200,
                      height: 200,
                      fit: BoxFit.contain,
                    );
                  } else if (snapshot.hasError) {
                    return Text("Error loading image: ${snapshot.error}");
                  }
                }

                return const CircularProgressIndicator(); // Loading indicator
              },
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
                      packageDetails: 'Details about $productName.', // Provide meaningful details
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

  Future<String> getImageUrl(String imageName) async {
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child('food/$imageName'); // Ensure this path is correct
    String url = await ref.getDownloadURL();
    return url;
  }
}

class AddressScreen extends StatelessWidget {
  final num order;
  final String packageName;
  final String packageDetails;
  final double productPrice;

  const AddressScreen({
    Key? key,
    required this.order,
    required this.packageName,
    required this.packageDetails,
    required this.productPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery Location'),
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
                controller: TextEditingController(),
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: TextEditingController(),
                decoration: const InputDecoration(
                  labelText: 'Contact Number',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: TextEditingController(),
                decoration: const InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UpiPaymentScreen(
                        order: order,
                        packageName: packageName,
                        packagePrice: productPrice.toString(), // Pass productPrice to UpiPaymentScreen
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
