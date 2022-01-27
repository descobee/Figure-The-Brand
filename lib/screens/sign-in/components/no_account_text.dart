import 'package:flutter/material.dart';

import '../../../size_config.dart';

class NoAccountLinkText extends StatelessWidget {
  const NoAccountLinkText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {},
          child: Text('Sign up',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: Colors.blueAccent)),
        )
      ],
    );
  }
}
