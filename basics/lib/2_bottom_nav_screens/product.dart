import 'package:flutter/material.dart';
import 'clothes/cloth_product.dart';
import 'food/food_product.dart';
import 'medicine/medicine.dart';
import 'pet_accessories/accessories.dart';
import 'toys/pet_toy.dart'; 


class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text("Pet Products"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Toy(),
                      ),
                    );
                  },
                  child: PackageCard(
                    packageName: "Toys",
                    packageDetails:
                        "Little joyful moments shared with pets can brighten your day and strengthen the bond between you and your furry friend.",
                    imagePath: "assets/toy.jfif",
                  ),
                ),
                const SizedBox(height: 10),
                //
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Food(),
                      ),
                    );
                  },
                  child: PackageCard(
                    packageName: "Food",
                    packageDetails:
                        "Pet food: A tasty delight that brings joy to furry companions.",
                    imagePath: "assets/eating.jfif",
                  ),
                ),
                const SizedBox(height: 10),
                //

                
               /* GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Shampoo(),
                      ),
                    );
                  },
                  child: PackageCard(
                    packageName: "Shampoo",
                    packageDetails:
                        "A splash of freshness that leaves pets feeling and smelling fantastic",
                    imagePath: "assets/shampoo.jfif",
                  ),
                ),
                const SizedBox(height: 10),*/
                //




                /*

                                to be continued

                */
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Clothes(),
                      ),
                    );
                  },
                  child: PackageCard(
                    packageName: "clothes",
                    packageDetails:
                        "A stylish touch for pets, keeping them comfy and looking adorable.",
                    imagePath: "assets/clothes.jfif",
                  ),
                ),
                const SizedBox(height: 10),
                //
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Accessories(),
                      ),
                    );
                  },
                  child: PackageCard(
                    packageName: "Pet Accessories",
                    packageDetails:
                        "Stock pet accessories like collars, leashes, harnesses, and ID tags",
                    imagePath: "assets/accessories.jfif",
                  ),
                ),
                const SizedBox(height: 10),
                //
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Medicine(),
                      ),
                    );
                  },
                  child: PackageCard(
                    packageName: "Medicine",
                    packageDetails:
                        "Pet medicine: A caring remedy that ensures the well-being of our beloved pets.",
                    imagePath: "assets/Medicine.jpg",
                  ),
                ),
              ],
            ),
          ),
        
      ),
    );
  }
}

class PackageCard extends StatelessWidget {
  final String packageName;
  final String packageDetails;
  final String imagePath; // Add an imagePath parameter for the photo

  PackageCard({
    required this.packageName,
    required this.packageDetails,
    required this.imagePath, // Pass the image path when creating the card
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    packageName,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Details: $packageDetails",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 80,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover, 
            ),
          ),
        ],
      ),
    );
  }
}