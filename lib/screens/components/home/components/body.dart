import 'package:flutter/material.dart';
import 'package:project/screens/components/home/components/main_body.dart';
import 'package:project/screens/components/home/components/title_with_custom.dart';
import 'package:project/screens/components/home/components/available_groups_list.dart';


class Body extends StatelessWidget {
  const Body({super.key});



  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return SingleChildScrollView(
      child:
      Column(
        children: <Widget>[
          Main_Body(size: size,press: (){}, ),
          TitleWithCustom(title: "Available Groups", press: (){}),
          Available_Groups_List(),


        ],
      ),
    );
  }
}

