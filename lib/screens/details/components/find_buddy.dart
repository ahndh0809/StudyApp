import 'package:flutter/material.dart';
import 'package:project/screens/details/components/Main_3.dart';
import 'package:project/screens/details/components/main_1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/details/components/main_2.dart';
import 'package:project/screens/components/home/components/title_with_custom.dart';



class Find_Buddy extends StatelessWidget {
  const Find_Buddy({
    super.key,
    required this.size,
    required this.press
  });
  final Function press;
  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
    Main_1(size: size, press: (){},),
        SizedBox(
          height: 20,
        ),
        TitleWithCustom(title: "Find Buddy", press: (){},),
        Stack(
          children:<Widget>[ Column(
            children: [
              Main_2(size: size, press: () {}),
              Main_3(size: size, press: () {}),
            ],
          ),

            Positioned(
              bottom: size.height*0.45 ,
              right: size.width*0.5,
              child: Text("Study Buddy",
                style: GoogleFonts.notoSans(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: size.height*0.18 ,
              right: size.width*0.5,
              child: Text("Assist Buddy",
                style: GoogleFonts.notoSans(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),


      ],

    );
  }
}

