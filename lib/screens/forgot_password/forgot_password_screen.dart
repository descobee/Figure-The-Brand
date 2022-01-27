import 'package:figure_the_brand_mobileapp/screens/forgot_password/components/forgot_password_body.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routename = '/forgotpassword';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        centerTitle: true,
      ),
      body: const ForgotPasswordBody(),
    );
  }
}
