





import 'package:basics/Address.dart';
import 'package:flutter/material.dart';
import 'Address.dart';



class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text("Pet Products"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
          
          
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AddressScreen(
                          order: 1, 
                          packageName: "Toys",
                          packageDetails: "Little joyful moments shared with pets can brighten your day and strengthen the bond between you and your furry friend.",
                        ),
                      ),
                    );
                  },
                  child: PackageCard(
                    packageName: "Toys",
                    packageDetails: "Little joyful moments shared with pets can brighten your day and strengthen the bond between you and your furry friend.",
                    imagePath: "assets/toy.jfif", 
                  ),
                ),
                SizedBox(height: 10),
                
          
          
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AddressScreen(
                          order: 2, 
                          packageName: "Food",
                          packageDetails: "Pet food: A tasty delight that brings joy to furry companions.",
                        ),
                      ),
                    );
                  },
                  child: PackageCard(
                    packageName: "Food",
                    packageDetails: "Pet food: A tasty delight that brings joy to furry companions.",
                    imagePath: "assets/eating.jfif",
                  ),
                ),

                //
                SizedBox(height: 10),
          
          
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AddressScreen(
                          order: 3, // Pass the appropriate order or data here.
                          packageName: "Shampoo",
                          packageDetails: "A splash of freshness that leaves pets feeling and smelling fantastic",
                        ),
                      ),
                    );
                  },
                  child: PackageCard(
                    packageName: "Shampoo",
                    packageDetails: "A splash of freshness that leaves pets feeling and smelling fantastic",
                    imagePath: "assets/shampoo.jfif",
                  ),
                ),
                SizedBox(height: 10),
          
          
                GestureDetector(
                  onTap: () {
                    // Navigate to AddressScreen and pass package details.
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AddressScreen(
                          order: 4, // Pass the appropriate order or data here.
                          packageName: "clothes",
                          packageDetails: "A stylish touch for pets, keeping them comfy and looking adorable",
                        ),
                      ),
                    );
                  },
                  child: PackageCard(
                    packageName: "clothes",
                    packageDetails: "A stylish touch for pets, keeping them comfy and looking adorable.",
                    imagePath: "assets/clothes.jfif",
                  ),
                ),
                SizedBox(height: 10),


                GestureDetector(
                  onTap: () {
                    // Navigate to AddressScreen and pass package details.
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AddressScreen(
                          order: 5, // Pass the appropriate order or data here.
                          packageName: "Pet Accessories",
                          packageDetails: "Stock pet accessories like collars, leashes, harnesses, and ID tags",
                        ),
                      ),
                    );
                  },
                  child: PackageCard(
                    packageName: "Pet Accessories",
                    packageDetails: "Stock pet accessories like collars, leashes, harnesses, and ID tags",
                    imagePath: "assets/accessories.jfif",
                  ),
                ),
                SizedBox(height: 10),
          
          
                
          
          
          
              ],
            ),
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
      margin: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded( 
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    packageName,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Details: $packageDetails",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 80, // Adjust the width of the image container as needed
            child: Image.asset(
              imagePath, // Use the provided image path
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
        ],
      ),
    );
  }
}
