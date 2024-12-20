import 'package:flutter/material.dart';
import 'package:project/screens/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static const String routeName= "/sign_in";
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Sign In"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
