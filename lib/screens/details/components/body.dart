import 'package:flutter/material.dart';
import 'package:project/screens/details/components/find_buddy.dart';
import 'package:project/screens/components/home/components/title_with_custom.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height:25,
          ),
          TitleWithCustom(title: "Want To Be Buddy", press: (){},),
          Find_Buddy(size: size, press: (){},),

        ],
      )


    );
  }
}

