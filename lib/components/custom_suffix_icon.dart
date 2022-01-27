import 'package:figure_the_brand_mobileapp/size_config.dart';
import 'package:flutter/material.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key? key,
    required this.desiredIcon,
    required this.pressedIcon,
  }) : super(key: key);
  final IconData desiredIcon;
  final VoidCallback pressedIcon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: pressedIcon,
      icon: Padding(
        padding: EdgeInsets.fromLTRB(0, getProportionateScreenHeight(4),
            getProportionateScreenWidth(20), getProportionateScreenWidth(20)),
        child: Icon(
          desiredIcon,
        ),
      ),
    );
  }
}
