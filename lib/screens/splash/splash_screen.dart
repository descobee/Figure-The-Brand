import 'package:figure_the_brand_mobileapp/screens/splash/components/body.dart';
import 'package:figure_the_brand_mobileapp/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    SizeConfigurations().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
