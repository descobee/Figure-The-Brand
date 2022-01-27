import 'package:figure_the_brand_mobileapp/screens/login_loading_screen/components/login_loader_body.dart';
import 'package:flutter/material.dart';

class LoginLoaderScreen extends StatelessWidget {
  const LoginLoaderScreen({Key? key}) : super(key: key);
  static String routename = '/loaderScreen';

  @override
  Widget build(BuildContext context) {
    return const LoginLoaderBody();
  }
}
