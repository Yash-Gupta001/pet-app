import 'package:flutter/material.dart';

class Hair extends StatelessWidget {
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
                'assets/hairs.jpg', // Replace with the path to your image asset
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
            Hair nourishment and care are essential for maintaining healthy and beautiful hair. Whether you have long, short, curly, or straight hair, here are some tips and information on how to nourish and care for your hair:

  1. Balanced Diet:
    - Good hair health starts from within. A well-balanced diet rich in vitamins and minerals, especially biotin, vitamin E, and omega-3 fatty acids, supports healthy hair growth.

  2. Hydration:
    - Proper hydration is crucial for healthy hair. Drink plenty of water to keep your hair and scalp moisturized.

  3. Gentle Shampooing:
    - Use a mild, sulfate-free shampoo suitable for your hair type. Avoid overwashing, as it can strip the hair of natural oils.

  4. Conditioner:
    - Apply a conditioner after shampooing to restore moisture and prevent tangles. Focus on the ends of your hair, which tend to be drier.

  5. Avoid Hot Water:
    - Use lukewarm water for washing your hair. Hot water can strip away natural oils and lead to dryness.

  6. Protect Your Hair from Heat  :
    - Limit the use of hot styling tools like flat irons and curling irons. When you do use them, use a heat protectant spray to minimize damage.

  7. Regular Trimming:
    - Regular haircuts (every 6-8 weeks) help eliminate split ends and promote healthy hair growth.

  8. Brushing:
    - Use a wide-tooth comb or a brush with soft bristles to detangle your hair. Start from the tips and work your way up to avoid breakage.

  9. Avoid Tight Hairstyles:
    - Tight ponytails, braids, or other hairstyles that pull on the hair can cause damage. Opt for looser styles whenever possible.

  10. Protect Your Hair from the Sun:
    - Prolonged sun exposure can damage hair. Wear a hat or use hair products with UV protection when spending time in the sun.

  11. Deep Conditioning:
    - Use a deep conditioning treatment once a week or as needed to restore moisture and vitality to your hair.

  12. Be Gentle When Wet:
    - Wet hair is more fragile, so handle it with care. Avoid vigorous towel-drying and excessive rubbing.

  13. Avoid Harsh Chemicals:
    - Limit the use of harsh chemical treatments like perms, relaxers, and bleach, as they can damage the hair.

  14. Use Silk Pillowcases:
    - Sleeping on a silk or satin pillowcase can reduce friction and prevent hair breakage.

  15. Stress Management:
    - High stress levels can contribute to hair loss. Practice stress-reduction techniques like meditation and yoga.

  16. Know Your Hair Type:
    - Understand your hair type (straight, curly, wavy, etc.) and choose products and routines tailored to its specific needs.

  17. Regular Exercise:
    - Exercise improves blood circulation, which can benefit the scalp and promote hair growth.

  18. Avoid Overprocessing:
    - If you frequently color or chemically treat your hair, give it time to recover between treatments to minimize damage.

Remember that hair care is not one-size-fits-all, and what works best for one person may differ from another. Customize your hair care routine based on your hair type, lifestyle, and specific needs. If you have specific hair concerns or conditions like excessive hair loss or dandruff, consider consulting a dermatologist or a trichologist for personalized advice and treatment options.
            
            '''),
        ),
      ),
    );
  }
}

