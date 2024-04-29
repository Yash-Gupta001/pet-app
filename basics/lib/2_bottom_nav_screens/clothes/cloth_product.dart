// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:basics/upi_payment_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';
//import 'package:image_picker/image_picker.dart';

class Clothes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(220), 
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 174, 
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/clothes/banner.webp'), 
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Text(
                    'CLOTHES',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          buildProductCard(context, 'Chucky Dress', 'chucky.jpg', 850),
          buildProductCard(context, 'Raincoat', 'Rain_coat.webp', 720),
          buildProductCard(context, 'Banana Dress', 'banana.jpg', 900),
          buildProductCard(context, 'Dog tuxedo', 'coat.jpg', 1200),
          buildProductCard(context, 'Woven Dress', 'woven.webp', 684),
          buildProductCard(context, 'Winter Jacket', 'jacket.webp', 1320),
          buildProductCard(context, 'Cosplay spider', 'cosplay.webp', 950),
        ],
      ),
    );
  }

  Widget buildProductCard(BuildContext context, String productName, String productImage, double productPrice) {
    return FutureBuilder(
      future: getImageUrl(productImage),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(
                    productName: productName,
                    productImage: snapshot.data!,
                    productPrice: productPrice,
                  ),
                ),
              );
            },
            child: Card(
              child: ListTile(
                leading: Image.network(
                  snapshot.data!,
                  width: 73,
                  height: 73,
                  fit: BoxFit.cover,
                ),
                title: Text(productName),
                subtitle: Text('₹$productPrice'),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Text('Error loading image');
        }
        return CircularProgressIndicator();
      },
    );
  }

  Future<String> getImageUrl(String imageName) async {
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child('clothes/$imageName');
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
            Image.asset(
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
                      order: 1, // Assuming a default order value
                      packageName: productName,
                      packageDetails: 'Some details here', // Add actual package details
                      productPrice: productPrice, // Pass product price to AddressScreen
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