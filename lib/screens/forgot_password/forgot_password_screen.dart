import 'package:flutter/material.dart';
import 'package:project/screens/forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static String routeName= "/forgot_password";
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
        centerTitle: true,
      ),
      body: Body(),

    );
  }
}
