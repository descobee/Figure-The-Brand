import 'package:figure_the_brand_mobileapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:figure_the_brand_mobileapp/screens/login_loading_screen/login_loader_screen.dart';
import 'package:figure_the_brand_mobileapp/screens/sign-in/sign_in_screen.dart';
import 'package:figure_the_brand_mobileapp/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

var routess = <String, WidgetBuilder>{
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routename: (context) => const ForgotPasswordScreen(),
  LoginLoaderScreen.routename: (context) => const LoginLoaderScreen()
};
