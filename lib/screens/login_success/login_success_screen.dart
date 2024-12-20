import 'package:flutter/material.dart';
import 'package:project/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatefulWidget {
  static String routeName= "/login_success";
  const LoginSuccessScreen({super.key});

  @override
  State<LoginSuccessScreen> createState() => _LoginSuccessScreenState();
}

class _LoginSuccessScreenState extends State<LoginSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
        centerTitle: true,
      ),
      body: Body(),

    );
  }
}
