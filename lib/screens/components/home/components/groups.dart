import 'package:flutter/material.dart';
import 'package:project/screens/details/details_screen.dart';
import 'package:project/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Groups extends StatelessWidget {
  const Groups({
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),),);
      },
      child: Stack(
        children:<Widget> [Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 4,
            bottom: 35,
            top: 35 ,
          ),
          height: size.height * 0.3,
          width: size.width * 0.4,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/Icons/connect.png"),
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter,
            ),
            color: kPrimaryColor,
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
            bottom: size.height*0.27 ,
            right: size.width*0.13,
            child: Text("Groups",
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
