import 'package:figure_the_brand_mobileapp/constants.dart';
import 'package:figure_the_brand_mobileapp/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.buttonText,
    required this.press,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: mPrimaryColour,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: press,
        child: Text(buttonText,
            style: TextStyle(
                fontFamily: "Brice",
                fontSize: getProportionateScreenWidth(18),
                color: mPrimaryColourLight,
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}
