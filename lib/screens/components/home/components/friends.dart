import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/screens/friends_feature/friend_screen.dart';

class Friends extends StatelessWidget {
  const Friends({
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => FriendScreen(),),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 5,
          right: 20,

        ),
        height: size.height * 0.145,
        width: size.width * 0.4,
        decoration: BoxDecoration(
          color: kPrimaryColor_2,
          image: DecorationImage(image: AssetImage("assets/Icons/people.png", ),
            fit: BoxFit.contain,
            alignment: Alignment.bottomRight,
          ),
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