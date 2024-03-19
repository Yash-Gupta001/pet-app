import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//import 'package:basics/2_bottom_nav_screens/home.dart';


class Aggressive extends StatelessWidget {
  final String videoUrl = "https://youtu.be/F96IkgWpDcI?si=RmtZ5ZMN1-OmtQqf";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        automaticallyImplyLeading: false,
        title: const Text(
          'Aggression',
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
              const Text(
                'Controlling aggression in dogs is crucial for the safety of both the dog and those around them. Aggressive behavior in dogs can result from various factors, including fear, anxiety, territorial instincts, or medical issues. Here are some steps to help control and manage aggression in dogs:',
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 16),
              _buildStep('Consult a Professional:',
                  'If your dog is displaying aggressive behavior, consult a veterinarian or a certified professional dog trainer or behaviorist. They can help determine the root cause of the aggression and provide guidance tailored to your dog\'s specific needs.'),
              _buildStep('Identify Triggers:',
                  'Understand what triggers your dog\'s aggression. It could be specific situations, people, other dogs, or objects. Knowing the triggers can help you avoid or manage them.'),
              _buildStep('Obedience Training:',
                  'Basic obedience training is essential for controlling aggressive behavior. Teaching commands like "sit," "stay," and "leave it" can give you better control over your dog in challenging situations.'),
              _buildStep('Positive Reinforcement:',
                  'Use positive reinforcement techniques to reward good behavior. Treats, praise, and toys can be used to encourage your dog to behave appropriately.'),
              _buildStep('Desensitization and Counterconditioning:',
                  'Gradual exposure to the triggers of aggression, coupled with positive experiences, can help your dog learn to associate these triggers with positive outcomes.'),
              _buildStep('Avoid Punishment:',
                  'Avoid using punishment-based training methods as they can escalate aggression and damage the trust between you and your dog.'),
              _buildStep('Socialization:',
                  'Proper socialization with other dogs and people, especially during a dog\'s critical developmental period (usually between 3 and 14 weeks), can help reduce fear-based aggression.'),
              _buildStep('Manage Stress and Anxiety:',
                  'Address any underlying stress or anxiety that may contribute to aggressive behavior. Consult with a veterinarian or behaviorist for appropriate treatment options.'),
              _buildStep('Use Muzzle and Restraints:',
                  'If your dog poses a risk of biting, use a properly fitted muzzle and other safety measures when in public or around unfamiliar people or animals.'),
              _buildStep('Exercise and Mental Stimulation:',
                  'Ensure your dog gets enough physical exercise and mental stimulation. A tired dog is less likely to exhibit aggressive behavior.'),
              _buildStep('Supervision:',
                  'Supervise your dog closely in situations where aggression is likely to occur, especially when around children or other pets.'),
              _buildStep('Medication:',
                  'In some cases, medication prescribed by a veterinarian may be necessary to manage aggression, especially when it\'s related to underlying medical or behavioral issues.'),
              _buildStep('Consistency:',
                  'Be consistent in your training and management of your dog\'s aggression. All family members and caregivers should follow the same rules and commands.'),
              _buildStep('Seek Professional Help:',
                  'If your dog\'s aggression is severe or dangerous, or if it doesn\'t improve with training and management, seek help from a professional behaviorist or veterinarian who specializes in aggression cases.'),
              _buildStep('Avoid Confinement and Tethering:',
                  'Confining a dog in a cage or tying them up for extended periods can increase stress and frustration, potentially exacerbating aggressive behavior. Instead of confining or tethering, focus on behavior modification techniques, training, and positive reinforcement to address the underlying causes of aggression.'),

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

              const SizedBox(height: 16),
              const Text(
                'It\'s important to approach aggression with patience and a commitment to finding the underlying causes. In many cases, with appropriate training and management, aggressive behavior in dogs can be significantly improved or even eliminated. However, safety should always be the top priority, and professional guidance is often necessary to address aggression effectively.',
                textAlign: TextAlign.left,
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