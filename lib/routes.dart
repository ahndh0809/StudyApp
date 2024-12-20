import 'package:flutter/widgets.dart';
import 'package:project/screens/components/home/home_screen.dart';
import 'package:project/screens/forgot_password/forgot_password_screen.dart';
import 'package:project/screens/login_success/login_success_screen.dart';
import 'package:project/screens/splash/splash_screen.dart';
import 'package:project/screens/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes={
  SplashScreen.routeName: (context)=> SplashScreen(),
  SignInScreen.routeName:(context)=> SignInScreen(),
  ForgotPasswordScreen.routeName:(context)=> ForgotPasswordScreen(),
  LoginSuccessScreen.routeName:(context)=> LoginSuccessScreen(),
  HomeScreen.routeName:(context)=> HomeScreen(),
};