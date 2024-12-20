import 'package:flutter/material.dart';

// colors that we use in our app
const kPrimaryColor = Color(0xFF002A5A);
const kPrimaryColor_2= Color(0xFFE4ECF5);
const kPrimaryColor_3 = Color(0xFFFFD5A5);
const kPrimaryColor_4= Color(0xFF1A2A40);
const kPrimaryColor_5= Color(0xFFFFE2C0);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);

const kSecondaryColor= Color(0xFFFF7643);
const kSecondaryGradientColor= LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]
);

const kAnimationDuration= Duration(milliseconds:200);

const double kDefaultPadding= 20.0;

final RegExp emailValidatorRegExp=
    RegExp(r"^[a-xA-Z0-9.]+@[a-zA-Z0-9]+\.[a-xA-Z]+");
const String kInvalidEmailError= "Please Enter Valid Email";
const String kShortPassError = "Password is too short";
const String kMatchPassError= "Passwords don't match";
const String kEmailNullError = "Please Enter your email";
const String kPassNullError = "Please Enter your password";
