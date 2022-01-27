import 'package:figure_the_brand_mobileapp/routes.dart';
import 'package:figure_the_brand_mobileapp/screens/splash/splash_screen.dart';
import 'package:figure_the_brand_mobileapp/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme(),
        initialRoute: SplashScreen.routeName,
        routes: routess);
  }
}
