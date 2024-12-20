import 'package:flutter/material.dart';
import 'package:project/screens/components/home/components/features.dart';
import 'package:project/screens/details/details_screen.dart';


class Feature_List extends StatelessWidget {
  const Feature_List({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Features(image:"assets/Icons/image.png",
            title: "Groups",
            feature_number:2,
            press: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),),);
            },
          ),
          Features(image:"assets/Icons/note.png",
            title: "Planner",
            feature_number:1,
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),),);
            },
          ),
          Features(image:"assets/Icons/note.png",
            title: "Planner",
            feature_number:1,
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),),);
            },
          ),


        ],
      ),
    );
  }
}

