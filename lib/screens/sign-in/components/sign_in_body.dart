import 'package:figure_the_brand_mobileapp/components/social_media_row.dart';
import 'package:figure_the_brand_mobileapp/screens/sign-in/components/no_account_text.dart';
import 'package:figure_the_brand_mobileapp/screens/sign-in/components/sign_in_form.dart';
import 'package:figure_the_brand_mobileapp/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfigurations.screenHeight * 0.04),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Login with your email and password \nor continue with social media account',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfigurations.screenHeight * 0.08),
                const SignInForm(),
                SizedBox(height: SizeConfigurations.screenHeight * 0.08),
                const SocialMediaRow(),
                SizedBox(height: getProportionateScreenHeight(20)),
                const NoAccountLinkText(),
                SizedBox(height: getProportionateScreenHeight(20))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
