import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Exercise extends StatelessWidget {
  final String videoUrl = "https://youtu.be/ljZVm63I6SI?si=mMcJ77KCY5lIaypd";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  toolbarHeight: 45,
  //toolbarOpacity: 0.3,
  automaticallyImplyLeading: false,


    title: const Text(
    'Exercise',
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
                'Regular Exercise for Dogs:',
                '''Regular exercise is essential for a dog's physical and mental well-being. The amount and type of exercise your dog needs depend on factors like their breed, age, size, and overall health. Here are some guidelines on dog exercise:''',
              ),
              _buildStep(
                'Daily Walks:',
                '''Most dogs benefit from daily walks. The duration and intensity of the walk should match your dog's energy level and age. High-energy breeds may need longer or more vigorous walks.''',
              ),
              _buildStep(
                'Playtime:',
                '''Interactive play with toys like fetch, tug-of-war, or frisbee can provide physical and mental stimulation. Playtime also strengthens the bond between you and your dog.''',
              ),
              _buildStep(
                'Off-Leash Time:',
                '''Off-leash time in a secure, enclosed area (like a dog park) allows your dog to run and play freely. It's especially important for breeds that enjoy socializing with other dogs.''',
              ),
              _buildStep(
                'Obedience Training:',
                '''Training sessions not only teach your dog commands but also engage their mind. Short, frequent training sessions are effective and fun for your dog.''',
              ),
              _buildStep(
                'Hiking and Trail Walks:',
                '''If you enjoy the outdoors, consider taking your dog hiking or on trail walks. Be sure to choose trails that are safe and appropriate for dogs.''',
              ),
              _buildStep(
                'Swimming:',
                '''Many dogs love swimming, which is an excellent low-impact exercise. Supervise your dog in the water, especially if they're not experienced swimmers.''',
              ),
              _buildStep(
                'Mental Stimulation:',
                '''Puzzle toys, treat-dispensing toys, and interactive games like hide-and-seek provide mental exercise and can help prevent boredom.''',
              ),
              _buildStep(
                'Dog Sports:',
                '''Some breeds excel in dog sports like agility, obedience trials, and flyball. These activities offer both physical exercise and mental challenges.''',
              ),
              _buildStep(
                'Consider Your Dog\'s Age:',
                '''Puppies have high energy levels but should not be overexerted. Older dogs may require less intense exercise but still need to stay active.''',
              ),
              _buildStep(
                'Health Check:',
                '''Consult your veterinarian before starting any new exercise routine, especially for puppies, senior dogs, or dogs with health issues.''',
              ),
              _buildStep(
                'Tailor Exercise to Breed:',
                '''Different breeds have different exercise needs. Research your dog's breed to understand their specific requirements.''',
              ),
              _buildStep(
                'Listen to Your Dog:',
                '''Pay attention to your dog's cues. If they seem tired, overheated, or in pain, stop exercising and provide rest and water.''',
              ),
              _buildStep(
                'Consistency:',
                '''Consistent exercise is more important than occasional intense workouts. Establish a routine that fits both your and your dog's schedule.''',
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
                'Remember:',
                '''Remember that every dog is unique, and their exercise needs can vary. It's essential to strike a balance between physical activity, mental stimulation, and rest to keep your dog happy and healthy. If you have concerns about your dog's exercise requirements or if they have specific health issues, consult your veterinarian or a professional dog trainer for guidance tailored to your dog's individual needs.''',
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