import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Food extends StatelessWidget {
  final String videoUrl = "https://youtu.be/ppkBktPF6FI?si=8AchentaC29oya1B";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  toolbarHeight: 45,
  //toolbarOpacity: 0.3,
  automaticallyImplyLeading: false,


    title: const Text(
    'Food',
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
                'Choosing the Right Dog Food:',
                '''Choosing the right dog food and determining which type of food is suitable for your dog depends on various factors, including the dog's age, size, breed, activity level, and any specific dietary needs or health concerns. Here's some information to help you make an informed decision:''',
              ),
              _buildStep(
                'Types of Dog Food:',
                '''a. Dry Dog Food (Kibble): Dry dog food is the most common type of commercial dog food. It is convenient, has a longer shelf life, and can help maintain dental health. Look for high-quality brands with animal protein as the primary ingredient.

b. Canned Dog Food: Canned dog food is moist and has a higher water content. It can be a good option for dogs with dental issues or those who need to increase their moisture intake.

c. Semi-Moist Dog Food: These are often used as treats because they have a high water content and added flavors and preservatives. They are not recommended for a dog's primary diet.

d. Raw Food (Raw Diet or BARF): Some dog owners choose to feed their dogs a raw food diet, which typically consists of raw meat, bones, and vegetables. This diet can be beneficial for some dogs but requires careful planning to ensure nutritional balance.

e. Homemade Dog Food: Homemade dog food can be a good option if prepared carefully with guidance from a veterinarian to ensure it meets the dog's nutritional needs.

f. Prescription Dog Food: Some dogs have specific dietary needs due to medical conditions such as allergies, kidney disease, or obesity. Veterinarians may prescribe special prescription dog food to address these issues.''',
              ),
              _buildStep(
                'Choosing the Right Food for Your Dog:',
                '''a. Age: Puppies, adult dogs, and seniors have different nutritional requirements. Choose a dog food formulated for your dog's life stage.

b. Breed: Some breeds have specific dietary considerations. For example, large breeds may require special food to support joint health, while small breeds may need smaller kibble size.

c. Size: Smaller and larger dogs have different calorie requirements. Make sure the food you choose is appropriate for your dog's size.

d. Activity Level: Highly active dogs may need more calories and protein than sedentary ones. Choose a food that matches your dog's activity level.

e. Special Dietary Needs: If your dog has allergies, sensitivities, or specific health issues, consult your veterinarian for recommendations. They may suggest a hypoallergenic or prescription diet.

f. Ingredients: Look for dog foods with high-quality animal protein sources, whole grains (or grain-free if necessary), and minimal fillers or artificial additives.''',
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
                'Additional Tips:',
                '''g. Read Labels: Pay attention to the ingredient list and guaranteed analysis on the food label. Look for foods with named meat sources (e.g., chicken, beef) as the primary ingredient.

h. Consult Your Veterinarian: Always consult your veterinarian before making any significant changes to your dog's diet. They can provide personalized recommendations based on your dog's unique needs.

Remember that dogs are individuals, and what works best for one dog may not work for another. Regular check-ups with your veterinarian can help ensure your dog's dietary needs are being met, and adjustments can be made as necessary.''',
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
