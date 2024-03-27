import 'package:flutter/material.dart';
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

  TextEditingController emailAddressController = TextEditingController();
  TextEditingController contactNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery location'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order: $order'),
            Text('Package Name: $packageName'),
            Text('Package Price: $packagePrice'),
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
        automaticallyImplyLeading: false,
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
        padding: const EdgeInsets.all(16),
        children: [
          buildProductCard(
            context,
            'Bolt laser',
            'assets/toy/bolt_laser_electric_toy.jpg',
            1999,
            packageDetails: "Toy Package Details 1",
          ),
          buildProductCard(
            context,
            'Big ball',
            'assets/toy/big_ball.jpg',
            1000,
            packageDetails: "Toy Package Details 2",
          ),
          buildProductCard(
            context,
            'Food Dispenser Ball',
            'assets/toy/food_dispenser_ball.jpg',
            39.99,
            packageDetails: "Toy Package Details 3"
          ),
          buildProductCard(
            context,
            'Rope',
            'assets/toy/rope.jpg',
            49.99,
            packageDetails: "Toy Package Details 4",
          ),
          buildProductCard(
            context,
            'Silicon Bone',
            'assets/toy/silicon_bone.jpg',
            59.99,
            packageDetails: "Toy Package Details 5",
          ),
          buildProductCard(
            context,
            'Stuffed Dinosaur',
            'assets/toy/stuffed_dinosaur.jpg',
            69.99,
            packageDetails: "Toy Package Details 6",
          ),
          buildProductCard(
            context,
            'Throwing Ropeknot',
            'assets/toy/throwing_ropeknot.jpg',
            79.99,
            packageDetails: "Toy Package Details 7",
          ),
        ],
      ),
    );
  }

  Widget buildProductCard(
    BuildContext context,
    String productName,
    String productImage,
    double productPrice,
    {required String packageDetails} // Added optional parameter for package details
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddressScreen(
              order: 1, // Sample value, replace with your order logic
              packageName: productName, // Pass product name as package name
              packagePrice: productPrice.toString(), // Pass product price as package price
              packageDetails: packageDetails, // Pass package details
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
              child: Image.asset(
                productImage,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
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
}
