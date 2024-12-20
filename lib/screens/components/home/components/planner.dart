import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/screens/planner_feature/planner_screen.dart';

class Planner extends StatelessWidget {
  const Planner({
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => StudyTimerScreen(),),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
            bottom: 4,
            right: 20,
            top: 35,
        ),
        height: size.height * 0.145,
        width: size.width * 0.4,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Icons/planner.png"),
            alignment: Alignment.bottomRight,
          ),

          color: kPrimaryColor_2,
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