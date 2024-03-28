import 'package:flutter/material.dart';
import 'package:basics/upi_payment_screen.dart';



class Medicine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        //toolbarOpacity: 0.3,
        automaticallyImplyLeading: false,
        title: const Text(
          'Medicine',
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
            'Alfalfa tonic which helps relieve loss of appetite',
            'assets/medicine/alfalfa.jpg',
            250,
          ), 
          buildProductCard(
            context,
            'Diarrhoea tablets',
            'assets/medicine/diarrhoea.jpg',
            90,
          ),
          buildProductCard(
            context,
            'Drop for excessive thrist',
            'assets/medicine/drop.avif',
            100,
          ),
          buildProductCard(
            context,
            'Ear drop',
            'assets/medicine/Ear_drop.jpg',
            130,
          ),
          buildProductCard(
            context,
            'Wound lotion',
            'assets/medicine/himax_lotion.jpg',
            684,
          ),
          buildProductCard(
            context,
            'Joint Tablets',
            'assets/medicine/joint-tablet.webp',
            180,
          ),
          buildProductCard(
            context,
            'Liv 52 metabolism simulation',
            'assets/medicine/liv52.jpg',
            350,
          ),
          buildProductCard(
            context,
            'Multivatine for pets',
            'assets/medicine/pet-vit.jpg',
            350,
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
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
              productName: productName,
              productImage: productImage,
              productPrice: productPrice,
            ),
          ),
        );
      },
      child: Card(
        child: ListTile(
          leading: Image.asset(
            productImage,
            width: 73,
            height: 73,
            fit: BoxFit.cover,
          ),
          title: Text(productName),
          subtitle: Text('₹$productPrice'),
        ),
      ),
    );
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
