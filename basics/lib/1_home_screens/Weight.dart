import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Weight extends StatelessWidget {
  final String videoUrl = "https://youtu.be/4oyYNrUG5Hg?si=Jj4VdI_-Iww70S2F";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  toolbarHeight: 45,
  //toolbarOpacity: 0.3,
  automaticallyImplyLeading: false,


    title: const Text(
    'Weight',
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
                'Consult Your Veterinarian:',
                'Before starting any weight management plan for your dog, consult your veterinarian. They can assess your dog\'s current weight, provide guidance on an ideal weight range, and rule out any underlying health issues.',
              ),
              _buildStep(
                'Measure Food Portions:',
                'Carefully measure your dog\'s food portions and follow the feeding guidelines on the dog food label. Avoid overfeeding, as excess calories can lead to weight gain.',
              ),
              _buildStep(
                'Choose High-Quality Food:',
                'Select a high-quality, well-balanced dog food that is appropriate for your dog\'s age, size, and activity level. Look for options labeled "weight management" if necessary.',
              ),
              _buildStep(
                'Monitor Treats:',
                'Be mindful of the number and size of treats you give your dog. Consider using low-calorie or small treats for training.',
              ),
              _buildStep(
                'Avoid Table Scraps:',
                'Limit or avoid feeding your dog table scraps or human food, as it can contribute to weight gain and may not provide the necessary nutrients.',
              ),
              _buildStep(
                'Regular Exercise:',
                'Maintain a consistent exercise routine for your dog. Regular physical activity helps burn calories and promotes weight loss. Consult your veterinarian for an appropriate exercise plan based on your dog\'s health and fitness level.',
              ),
              _buildStep(
                'Controlled Feeding Schedule:',
                'Instead of free-feeding (leaving food out all day), establish a regular feeding schedule. This allows you to monitor your dog\'s intake more effectively.',
              ),
              _buildStep(
                'Slow Feeder Bowls:',
                'Consider using slow feeder bowls or puzzle feeders to slow down your dog\'s eating, which can help prevent overeating.',
              ),
              _buildStep(
                'Weight Loss Diets:',
                'In some cases, your veterinarian may recommend a prescription weight loss diet specifically formulated to help dogs lose weight safely.',
              ),
              _buildStep(
                'Monitor Progress:',
                'Keep track of your dog\'s weight and body condition score over time. Adjust their diet and exercise routine as needed to achieve and maintain a healthy weight.',
              ),
              _buildStep(
                'Encourage Hydration:',
                'Ensure your dog has access to clean, fresh water at all times. Proper hydration is essential for metabolism and overall health.',
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

              _buildStep(
                'Consider Low-Impact Exercise:',
                'For overweight or older dogs, low-impact exercises like swimming or gentle walks can be easier on the joints while still providing exercise.',
              ),
              _buildStep(
                'Be Patient:',
                'Weight loss should be gradual to avoid health complications. Be patient and consistent in your efforts.',
              ),
              _buildStep(
                'Seek Professional Help:',
                'If your dog\'s weight management proves challenging, consider working with a veterinarian or a certified veterinary nutritionist who can create a tailored plan.',
              ),
              const SizedBox(height: 16),
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
          ),
        ),
        const SizedBox(height: 8),
        Text(description),
        const SizedBox(height: 16),
      ],
    );
  }
}
