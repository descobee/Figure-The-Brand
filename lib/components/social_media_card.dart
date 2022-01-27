import 'package:figure_the_brand_mobileapp/constants.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons(
      {Key? key,
      required this.smIcon,
      required this.tap,
      required this.iconColour})
      : super(key: key);
  final IconData smIcon;
  final VoidCallback tap;
  final Color iconColour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(10)),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration: const BoxDecoration(
            color: mPrimaryColourLight, shape: BoxShape.circle),
        child: Icon(
          smIcon,
          color: iconColour,
        ),
      ),
    );
  }
}
