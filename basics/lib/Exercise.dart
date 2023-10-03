import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
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
                'assets/exercise.jfif', // Replace with the path to your image asset
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

            Regular exercise is essential for a dog's physical and mental well-being. The amount and type of exercise your dog needs depend on factors like their breed, age, size, and overall health. Here are some guidelines on dog exercise:

  1. Daily Walks:
    - Most dogs benefit from daily walks. The duration and intensity of the walk should match your dog's energy level and age. High-energy breeds may need longer or more vigorous walks.

  2. Playtime:
    - Interactive play with toys like fetch, tug-of-war, or frisbee can provide physical and mental stimulation. Playtime also strengthens the bond between you and your dog.

  3. Off-Leash Time:
    - Off-leash time in a secure, enclosed area (like a dog park) allows your dog to run and play freely. It's especially important for breeds that enjoy socializing with other dogs.

  4. Obedience Training:
    - Training sessions not only teach your dog commands but also engage their mind. Short, frequent training sessions are effective and fun for your dog.

  5. Hiking and Trail Walks:
    - If you enjoy the outdoors, consider taking your dog hiking or on trail walks. Be sure to choose trails that are safe and appropriate for dogs.

  6. Swimming:
    - Many dogs love swimming, which is an excellent low-impact exercise. Supervise your dog in the water, especially if they're not experienced swimmers.

  7. Mental Stimulation:
    - Puzzle toys, treat-dispensing toys, and interactive games like hide-and-seek provide mental exercise and can help prevent boredom.

  8. Dog Sports:
    - Some breeds excel in dog sports like agility, obedience trials, and flyball. These activities offer both physical exercise and mental challenges.

  9. Consider Your Dog's Age:
    - Puppies have high energy levels but should not be overexerted. Older dogs may require less intense exercise but still need to stay active.

  10. Health Check:
    - Consult your veterinarian before starting any new exercise routine, especially for puppies, senior dogs, or dogs with health issues.

  11. Tailor Exercise to Breed:
    - Different breeds have different exercise needs. Research your dog's breed to understand their specific requirements.

  12. Listen to Your Dog
    - Pay attention to your dog's cues. If they seem tired, overheated, or in pain, stop exercising and provide rest and water.

  13. Consistency:
    - Consistent exercise is more important than occasional intense workouts. Establish a routine that fits both your and your dog's schedule.

Remember that every dog is unique, and their exercise needs can vary. It's essential to strike a balance between physical activity, mental stimulation, and rest to keep your dog happy and healthy. If you have concerns about your dog's exercise requirements or if they have specific health issues, consult your veterinarian or a professional dog trainer for guidance tailored to your dog's individual needs.

            '''),
        ),
      ),
    );
  }
}

