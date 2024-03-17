import 'package:basics/upi_payment_screen.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  final num order;
  final String packageName;
  final String packageDetails;

  AddressScreen({
    required this.order,
    required this.packageName,
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
                        order: 1, // Pass the appropriate order or data here.
                        packageName: "Day Care- 1D",
                        packagePrice: '\u20B9 150',
                        packageDetails: "Includes all services-:Feeding,Grooming,Outdoor Play,Medical Care etc.",
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
