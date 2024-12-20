import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    required this. image,
    required this. text,
    super.key,
  });
  final String text, image;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Spacer(),
                Text("StudyBuddy", style: TextStyle(fontSize: getProportionateScreenWidth(36),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                Spacer(flex: 2,),
                Image.asset(
                  image,
                  height: getProportionateScreenHeight(265),
                  width: getProportionateScreenWidth(235),
            
                )
            
              ],
            ),
          ),
        ),

      ],
    );
  }
}
