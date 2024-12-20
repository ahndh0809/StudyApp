import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/matching_screen/matching_screen.dart';



class Main_1 extends StatelessWidget {
  const Main_1({
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => MatchingScreen(),),);
      },
      child: Stack(
        children:<Widget> [Container(
          margin: EdgeInsets.only(
            left: size.width*0.05,
            right: size.width*0.05,
            bottom: 0,
            top: size.width*0.08 ,
          ),
          height: size.height * 0.25,
          width: size.width,
          decoration: BoxDecoration(

            color: kPrimaryColor_4,
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
          Positioned(
            bottom: size.height*0.18 ,
            right: size.width*0.5,
            child: Text("Assist Buddy",
              style: GoogleFonts.notoSans(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

        ],
      ),
    );
  }
}