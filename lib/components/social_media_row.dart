import 'package:figure_the_brand_mobileapp/components/social_media_card.dart';
import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaIcons(
          smIcon: Icons.facebook,
          tap: () {},
          iconColour: Colors.blue.shade900,
        ),
        SocialMediaIcons(
          smIcon: Icons.facebook,
          tap: () {},
          iconColour: Colors.blue.shade900,
        ),
        SocialMediaIcons(
          smIcon: Icons.facebook,
          tap: () {},
          iconColour: Colors.blue.shade900,
        )
      ],
    );
  }
}
