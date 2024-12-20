import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/screens/matching_screen/matching_screen.dart';


class Main_2 extends StatelessWidget {
  const Main_2({
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => MatchingScreen(),),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
            bottom: size.width*0.05,
            left: size.width*0.05,
            right: size.width*0.05,
            top: size.width*0.075,
        ),
        height: size.height * 0.25,
        width: size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor_3,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: Offset(0, 10),
              color: Colors.white38,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}