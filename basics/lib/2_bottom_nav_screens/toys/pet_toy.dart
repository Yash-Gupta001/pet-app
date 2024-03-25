import 'package:flutter/material.dart';
import 'package:basics/upi_payment_screen.dart';

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
            'Product 1',
            'assets/toy/bolt_laser_electric_toy.jpg',
            19.99,
          ), 
          buildProductCard(
            context,
            'Big ball',
            'assets/toy/big_ball.jpg',
            10,
          ),
          buildProductCard(
            context,
            'Food Dispenser Ball',
            'assets/toy/food_dispenser_ball.jpg',
            39.99,
          ),
          buildProductCard(
            context,
            'Rope',
            'assets/toy/rope.jpg',
            49.99,
          ),
          buildProductCard(
            context,
            'Silicon Bone',
            'assets/toy/silicon_bone.jpg',
            59.99,
          ),
          buildProductCard(
            context,
            'Stuffed Dinosaur',
            'assets/toy/stuffed_dinosaur.jpg',
            69.99,
          ),
          buildProductCard(
            context,
            'Throwing Ropeknot',
            'assets/toy/throwing_ropeknot.jpg',
            79.99,
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
            builder: (context) => ProductDetailPage(
              productName: productName,
              productImage: productImage,
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
class ProductDetailPage extends StatelessWidget {
  final String productName;
  final String productImage;
  final double productPrice;

  const ProductDetailPage({
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
          ],
        ),
      ),
    );
  }
}
