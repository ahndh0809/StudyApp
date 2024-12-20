import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/constants.dart';
import 'package:project/screens/components/home/components/body.dart';
import 'package:project/components/my_bottom_nav_bar.dart';


class HomeScreen extends StatefulWidget {
  static String routeName= "/home";
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}



AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white38,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/Icons/menu_1.svg"),
      onPressed: () {},
    ),
    actions: [
     Container(
       margin: EdgeInsets.only(right: 10),
       child: ClipOval(
         child:
         Container(
           color: kPrimaryColor,
           height: 30,
           width: 30,
         )
       ),
     ),
    ],
  );
}
