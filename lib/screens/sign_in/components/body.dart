import 'package:flutter/material.dart';
import 'package:project/size_config.dart';
import 'package:project/screens/sign_in/components/sign_form.dart';
import 'package:project/components/social_card.dart';
import 'package:project/components/no_account_text.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenWidth*0.09,
              ),
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Sign in with your email and password\n or continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenWidth*0.09,
              ),
              SignForm(),
              SizedBox(
                height: SizeConfig.screenWidth*0.09,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SocialCard(icon: "assets/Icons/google.svg",
                  press: (){},
                ),
                SocialCard(icon: "assets/Icons/facebook.svg",
                  press: (){},
                ),
                SocialCard(icon: "assets/Icons/twitter.svg",
                  press: (){},
                ),
              ],
              ),
              SizedBox(height: getProportionateScreenWidth(20),),
              NoAccountText(),

            ],
          ),
        ),
      ),
    );
  }
}

