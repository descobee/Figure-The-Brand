import 'package:flutter/material.dart';


class SizeConfigurations{
  static late MediaQueryData _mediaQueryData;
  static late double screenHeight;
  static late double screenWidth;
  static late double regularSize;
  static late Orientation orientation;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);

    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight){
  double screenHeight = SizeConfigurations.screenHeight;
  return (inputHeight/812.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth){
  double screenWidth = SizeConfigurations.screenWidth;
  return (inputWidth/375.0) * screenWidth;
}