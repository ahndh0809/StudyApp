import 'package:flutter/material.dart';
import 'package:project/screens/friends_feature/components/body.dart';
import 'package:project/constants.dart';
import 'package:project/components/my_bottom_nav_bar.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),

    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
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

