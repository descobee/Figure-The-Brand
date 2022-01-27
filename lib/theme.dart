import 'package:figure_the_brand_mobileapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: const Color(0XFFF7F7F8),
      textTheme: textss(),
      primaryColor: mPrimaryColour,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputDecorationTheme: inputDecorationTheme(),
      textSelectionTheme: textSelectors(),
      appBarTheme: appBarTheme());
}

TextSelectionThemeData textSelectors() => const TextSelectionThemeData(
    cursorColor: Colors.blueGrey, selectionColor: Colors.blueGrey);

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: const BorderSide(color: textColour),
      gapPadding: 10);
  return InputDecorationTheme(
      focusColor: mPrimaryColour,
      contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder);
}

TextTheme textss() {
  return const TextTheme(
      bodyText1: TextStyle(color: textColour),
      bodyText2: TextStyle(color: textColour));
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      iconTheme: IconThemeData(color: Colors.black),
      foregroundColor: textColour,
      titleTextStyle: TextStyle(fontSize: 18, color: textColour));
}
