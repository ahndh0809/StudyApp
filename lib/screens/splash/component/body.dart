import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/screens/sign_in/sign_in_screen.dart';
import 'package:project/screens/splash/component/splash_content.dart';

import 'package:project/components/default_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String,String>> splashData= [
    {"text":"Welcome to StudyBuddy,\nLet's get started!",
    "image": "assets/Icons/signup.png"},
    {"text":"We help people connect \nwith people near to study",
    "image":"assets/Icons/login.png"},
    {"text":"We help students help \neach other studying!",
    "image":"assets/Icons/signup.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        SizedBox(
          width: double.infinity,
          child: Column(children: <Widget>[
            Spacer(),
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value){
                  setState(() {
                    currentPage= value;
                  });
                },
                itemCount: splashData.length,
                  itemBuilder: (context, index)=> SplashContent(
                image: splashData[index]["image"] ?? "",
                text: splashData[index]["text"] ?? "",
            ),
            ),
            ),
            Spacer(),

            Expanded(
                child: Column(
                  children: <Widget>[

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: List.generate(splashData.length, (index)=>buildDot(index: index)
                     ),
                   ),
                    Spacer(flex: 2,),
                    DefaultButton(text: "Continue",press: (){
                      print("Button Pressed! Navigating to SignInScreen...");
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                    ),
                    Spacer(),
                  ],
                )
            ),
          ],
          ),
        ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage== index ? kSecondaryColor:Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),

      ),
    );
  }
}

