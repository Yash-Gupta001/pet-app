import 'package:flutter/material.dart';

class Weight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        toolbarOpacity: 0.3,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/weight_management.jfif', // Replace with the path to your image asset
                height: 100,
                width: 250, 
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('''

            Weight management for dogs is crucial for their overall health and well-being. Maintaining a healthy weight can help prevent various health issues, including obesity, joint problems, and heart disease. Here are some tips for managing your dog's weight:

1. Consult Your Veterinarian:

Before starting any weight management plan for your dog, consult your veterinarian. They can assess your dog's current weight, provide guidance on an ideal weight range, and rule out any underlying health issues.
2. Measure Food Portions:

Carefully measure your dog's food portions and follow the feeding guidelines on the dog food label. Avoid overfeeding, as excess calories can lead to weight gain.
3. Choose High-Quality Food:

Select a high-quality, well-balanced dog food that is appropriate for your dog's age, size, and activity level. Look for options labeled "weight management" if necessary.
4. Monitor Treats:

Be mindful of the number and size of treats you give your dog. Consider using low-calorie or small treats for training.
5. Avoid Table Scraps:

Limit or avoid feeding your dog table scraps or human food, as it can contribute to weight gain and may not provide the necessary nutrients.
6. Regular Exercise:

Maintain a consistent exercise routine for your dog. Regular physical activity helps burn calories and promotes weight loss. Consult your veterinarian for an appropriate exercise plan based on your dog's health and fitness level.
7. Controlled Feeding Schedule:

Instead of free-feeding (leaving food out all day), establish a regular feeding schedule. This allows you to monitor your dog's intake more effectively.
8. Slow Feeder Bowls:

Consider using slow feeder bowls or puzzle feeders to slow down your dog's eating, which can help prevent overeating.
9. Weight Loss Diets:

In some cases, your veterinarian may recommend a prescription weight loss diet specifically formulated to help dogs lose weight safely.
10. Monitor Progress:
- Keep track of your dog's weight and body condition score over time. Adjust their diet and exercise routine as needed to achieve and maintain a healthy weight.

11. Encourage Hydration:
- Ensure your dog has access to clean, fresh water at all times. Proper hydration is essential for metabolism and overall health.

12. Consider Low-Impact Exercise:
- For overweight or older dogs, low-impact exercises like swimming or gentle walks can be easier on the joints while still providing exercise.

13. Be Patient:
- Weight loss should be gradual to avoid health complications. Be patient and consistent in your efforts.

14. Seek Professional Help:
- If your dog's weight management proves challenging, consider working with a veterinarian or a certified veterinary nutritionist who can create a tailored plan.

Remember that weight management is a long-term commitment. It's essential to create a sustainable routine that supports your dog's health and happiness. Regular check-ups with your veterinarian can help track progress and make necessary adjustments to ensure your dog maintains a healthy weight.

            '''),
        ),
      ),
    );
  }
}
