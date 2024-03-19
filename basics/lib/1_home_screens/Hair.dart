import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Hair extends StatelessWidget {
  final String videoUrl = "https://youtu.be/Mnv6SOP2Gxk?si=ykob9GeT7tJ_gi-x";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  toolbarHeight: 45,
  //toolbarOpacity: 0.3,
  automaticallyImplyLeading: false,


    title: const Text(
    'Hair',
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
                'Balanced Diet:',
                '''Good hair health starts from within. A well-balanced diet rich in vitamins and minerals, especially biotin, vitamin E, and omega-3 fatty acids, supports healthy hair growth.''',
              ),
              _buildStep(
                'Hydration:',
                '''Proper hydration is crucial for healthy hair. Drink plenty of water to keep your hair and scalp moisturized.''',
              ),
              _buildStep(
                'Gentle Shampooing:',
                '''Use a mild, sulfate-free shampoo suitable for your hair type. Avoid overwashing, as it can strip the hair of natural oils.''',
              ),
              _buildStep(
                'Conditioner:',
                '''Apply a conditioner after shampooing to restore moisture and prevent tangles. Focus on the ends of your hair, which tend to be drier.''',
              ),
              _buildStep(
                'Avoid Hot Water:',
                '''Use lukewarm water for washing your hair. Hot water can strip away natural oils and lead to dryness.''',
              ),
              _buildStep(
                'Protect Your Hair from Heat:',
                '''Limit the use of hot styling tools like flat irons and curling irons. When you do use them, use a heat protectant spray to minimize damage.''',
              ),
              _buildStep(
                'Regular Trimming:',
                '''Regular haircuts (every 6-8 weeks) help eliminate split ends and promote healthy hair growth.''',
              ),
              _buildStep(
                'Brushing:',
                '''Use a wide-tooth comb or a brush with soft bristles to detangle your hair. Start from the tips and work your way up to avoid breakage.''',
              ),
              _buildStep(
                'Avoid Tight Hairstyles:',
                '''Tight ponytails, braids, or other hairstyles that pull on the hair can cause damage. Opt for looser styles whenever possible.''',
              ),
              _buildStep(
                'Protect Your Hair from the Sun:',
                '''Prolonged sun exposure can damage hair. Wear a hat or use hair products with UV protection when spending time in the sun.''',
              ),
              _buildStep(
                'Deep Conditioning:',
                '''Use a deep conditioning treatment once a week or as needed to restore moisture and vitality to your hair.''',
              ),
              _buildStep(
                'Be Gentle When Wet:',
                '''Wet hair is more fragile, so handle it with care. Avoid vigorous towel-drying and excessive rubbing.''',
              ),
              _buildStep(
                'Avoid Harsh Chemicals:',
                '''Limit the use of harsh chemical treatments like perms, relaxers, and bleach, as they can damage the hair.''',
              ),
              _buildStep(
                'Use Silk Pillowcases:',
                '''Sleeping on a silk or satin pillowcase can reduce friction and prevent hair breakage.''',
              ),
              _buildStep(
                'Stress Management:',
                '''High stress levels can contribute to hair loss. Practice stress-reduction techniques like meditation and yoga.''',
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
                'Know Your Hair Type:',
                '''Understand your hair type (straight, curly, wavy, etc.) and choose products and routines tailored to its specific needs.''',
              ),
              _buildStep(
                'Regular Exercise:',
                '''Exercise improves blood circulation, which can benefit the scalp and promote hair growth.''',
              ),
              _buildStep(
                'Avoid Overprocessing:',
                '''If you frequently color or chemically treat your hair, give it time to recover between treatments to minimize damage.''',
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