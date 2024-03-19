import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Habitat extends StatelessWidget {
  final String videoUrl = "https://youtu.be/zwzMy7WfGlY?si=2TOnWH2kYmEmCUaJ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  toolbarHeight: 45,
  //toolbarOpacity: 0.3,
  automaticallyImplyLeading: false,


    title: const Text(
    'Habitat',
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStep(
                'Urban Apartments and Small Spaces:',
                '''1) Small Breeds: Many small dog breeds, such as Chihuahuas, Pomeranians, and French Bulldogs, adapt well to urban living due to their compact size and lower exercise requirements.
Low-Energy Breeds: Breeds like the Shih Tzu or Bichon Frise, which have lower energy levels, can do well in small living spaces.''',
              ),
              _buildStep(
                'Suburban Homes with Yards:',
                '''2) Medium-Sized Breeds: Breeds like Labrador Retrievers, Golden Retrievers, and Beagles often thrive in suburban environments with access to a yard for exercise.
Active Breeds: High-energy breeds like Border Collies, Australian Shepherds, and Huskies may benefit from the space to run and play.''',
              ),
              _buildStep(
                'Rural or Farm Settings:',
                '''3) Working Breeds: Breeds bred for herding or working on farms, such as Australian Cattle Dogs, Border Collies, and German Shepherds, are well-suited to rural environments.
Livestock Guardian Dogs: Breeds like Great Pyrenees or Anatolian Shepherds excel in protecting livestock on farms.''',
              ),
              _buildStep(
                'Outdoor Enthusiasts:',
                '''4) Athletic Breeds: Active individuals or families who enjoy outdoor activities like hiking, running, or camping may find that breeds like the Vizsla, Weimaraner, or Border Collie are great companions.
Cold-Weather Breeds: Breeds like the Siberian Husky and Alaskan Malamute have thick coats and are well-suited to colder climates.''',
              ),
              _buildStep(
                'Tropical or Warm Climates:',
                '''5) Short-Nosed Breeds: In hot climates, it's essential to avoid breeds with short noses (brachycephalic breeds) like Bulldogs and Pugs, as they can have difficulty regulating their body temperature.
Breeds with Short Coats: Dogs with shorter coats, such as Dalmatians or Greyhounds, may be more comfortable in warm climates.''',
              ),
              _buildStep(
                'Indoor/Outdoor Balance:',
                '''Many breeds can adapt to various environments with proper care and exercise. For example, Labrador Retrievers and German Shepherds can live indoors but require regular outdoor exercise.
It's important to note that individual dogs' needs can vary, and not all dogs of a specific breed will fit these general guidelines. Additionally, regardless of breed, all dogs need socialization, training, and attention from their owners to thrive in any habitat. Before bringing a dog into your home, consider your lifestyle, activity level, and the specific needs of the breed or mix you're interested in to ensure a good match. Consulting with breed-specific rescue organizations, shelters, or breeders can also provide valuable insights into a dog's suitability for your habitat.''',
              ),

            YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: YoutubePlayer.convertUrlToId(videoUrl)!,
                  flags: const YoutubePlayerFlags(
                    autoPlay: false,
                    mute: false,
                  ),
                ),
                showVideoProgressIndicator: true,
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStep(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 8),
        Text(description),
        const SizedBox(height: 16),
      ],
    );
  }
}