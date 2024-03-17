import 'package:flutter/material.dart';

class Habitat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/habitat.jfif', // Replace with the path to your image asset
                height: 100,
                width: 250,
              ),
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('''
            Different dog breeds have varying habitat and living condition preferences based on their size, activity level, coat type, and more. Here are some general guidelines on which dog breeds may thrive in different types of habitats:

Urban Apartments and Small Spaces:-

1) Small Breeds: Many small dog breeds, such as Chihuahuas, Pomeranians, and French Bulldogs, adapt well to urban living due to their compact size and lower exercise requirements.
Low-Energy Breeds: Breeds like the Shih Tzu or Bichon Frise, which have lower energy levels, can do well in small living spaces.
Suburban Homes with Yards:

2 )Medium-Sized Breeds: Breeds like Labrador Retrievers, Golden Retrievers, and Beagles often thrive in suburban environments with access to a yard for exercise.
Active Breeds: High-energy breeds like Border Collies, Australian Shepherds, and Huskies may benefit from the space to run and play.
Rural or Farm Settings:

3) Working Breeds: Breeds bred for herding or working on farms, such as Australian Cattle Dogs, Border Collies, and German Shepherds, are well-suited to rural environments.
Livestock Guardian Dogs: Breeds like Great Pyrenees or Anatolian Shepherds excel in protecting livestock on farms.
Outdoor Enthusiasts:

4) Athletic Breeds: Active individuals or families who enjoy outdoor activities like hiking, running, or camping may find that breeds like the Vizsla, Weimaraner, or Border Collie are great companions.
Cold-Weather Breeds: Breeds like the Siberian Husky and Alaskan Malamute have thick coats and are well-suited to colder climates.
Tropical or Warm Climates:

5) Short-Nosed Breeds: In hot climates, it's essential to avoid breeds with short noses (brachycephalic breeds) like Bulldogs and Pugs, as they can have difficulty regulating their body temperature.
Breeds with Short Coats: Dogs with shorter coats, such as Dalmatians or Greyhounds, may be more comfortable in warm climates.


Indoor/Outdoor Balance:-
Many breeds can adapt to various environments with proper care and exercise. For example, Labrador Retrievers and German Shepherds can live indoors but require regular outdoor exercise.
It's important to note that individual dogs' needs can vary, and not all dogs of a specific breed will fit these general guidelines. Additionally, regardless of breed, all dogs need socialization, training, and attention from their owners to thrive in any habitat. Before bringing a dog into your home, consider your lifestyle, activity level, and the specific needs of the breed or mix you're interested in to ensure a good match. Consulting with breed-specific rescue organizations, shelters, or breeders can also provide valuable insights into a dog's suitability for your habitat.
            '''),
        ),
      ),
    );
  }
}
