import 'package:flutter/material.dart';
import 'package:project/components/default_button.dart';
import 'package:project/screens/components/home/home_screen.dart';
import 'package:project/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight*0.1,
        ),
        Center(
          child: Image.asset(
            "assets/Images/login_success.png",
            height: SizeConfig.screenHeight * 0.4,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth*0.6,
            child: DefaultButton(text: "Back to home",
                press: (){  Navigator.pushNamed(context, HomeScreen.routeName);}
            ),
        ),
        Spacer(),
      ],
    );
  }
}
