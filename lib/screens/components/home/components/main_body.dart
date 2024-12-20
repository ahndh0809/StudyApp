import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/components/home/components/groups.dart';
import 'package:project/screens/components/home/components/planner.dart';
import 'package:project/screens/components/home/components/friends.dart';




class Main_Body extends StatelessWidget {
  const Main_Body({
    super.key,
    required this.size,
    required this.press,
  });

  final Size size;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Groups(size: size,press: () {

        }),
        Stack(
          children:<Widget>[ Column(
            children: [
              Planner(size: size, press: () {}),
              Friends(size: size, press: () {}),
            ],
          ),
            Positioned(
              bottom: size.height*0.263 ,
              right: size.width*0.27,
              child: Text("Planner",
                style: GoogleFonts.notoSans(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: size.height*0.11 ,
              right: size.width*0.27,
              child: Text("Friends",
                style: GoogleFonts.notoSans(
                  color: Colors.black,
                  fontSize: 15,
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

