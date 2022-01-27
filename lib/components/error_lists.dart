import 'package:flutter/material.dart';

import '../size_config.dart';

class ErrorLists extends StatelessWidget {
  const ErrorLists({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          List.generate(errors.length, (index) => errorItem(errors[index])),
    );
  }

  Row errorItem(String listError) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(14),
              vertical: getProportionateScreenHeight(14)),
          child: const Icon(
            Icons.error_outline_outlined,
          ),
        ),
        Text(listError)
      ],
    );
  }
}
