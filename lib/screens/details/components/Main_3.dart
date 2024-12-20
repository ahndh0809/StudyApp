import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/screens/matching_screen/matching_screen.dart';

class Main_3 extends StatelessWidget {
  const Main_3({
    super.key,
    required this.size,
    required this.press,
  });

  final Size size;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  MatchingScreen(),),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          left: size.width*0.05,
          right: size.width*0.05,
        ),
        height: size.height * 0.25,
        width: size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor_5,

          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 10,
              color: Colors.white38,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}