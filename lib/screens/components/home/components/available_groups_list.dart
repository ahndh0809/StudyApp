import 'package:flutter/material.dart';
import 'package:project/screens/components/home/components/available_groups.dart';



class Available_Groups_List extends StatelessWidget {
  const Available_Groups_List({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Available_Groups(image: "assets/Icons/group_2.png",
              press:(){}),
          Available_Groups(image: "assets/Icons/group_2.png",
              press:(){}),
          Available_Groups(image: "assets/Icons/group_2.png",
              press:(){}),
          Available_Groups(image: "assets/Icons/group_2.png",
              press:(){}),
        ],
      ),
    );
  }
}
