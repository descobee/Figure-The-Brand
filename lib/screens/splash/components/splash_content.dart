import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final String? image, text1, text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Text(
          text1!,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Brice",
              color: mPrimaryColour,
              fontSize: getProportionateScreenWidth(42),
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 8,
        ),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(400),
          width: getProportionateScreenWidth(500),
        ),
        const SizedBox(height: 9),
        Text(
          text2!,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColour,
            fontWeight: FontWeight.w400,
            fontSize: getProportionateScreenWidth(16),
          ),
        )
      ],
    );
  }
}
