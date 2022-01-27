import 'package:flutter/material.dart';

const mPrimaryColour = Color(0xFF03152D);
const mPrimaryColourLight = Color(0xFFE0DADA);
const mSecondaryColour = Color(0XFF979797);
const textColour = Color(0xFF757575);

const animationDuration = Duration(milliseconds: 300);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9_.]+@[a-zA-Z0-9]+\.[a-zA-Z]");
const String inavlidEmailError = "Please enter a valid email";
const String nullEmailError = "Please enter your email";
const String nullPasswordError = "Please enter your password";
const String shortPasswordError = "Password too short";
const String matchPasswordError = "Passwords do not match";
