import 'package:flutter/material.dart';
import 'package:project/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding*2.5),
      height: size.height *0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 30+ kDefaultPadding,
            ),

            height: size.height*0.2-27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.7),
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),


              )
              ,
            ),
            child: Row(
              children:<Widget> [
                Text("Welcome!", style: TextStyle(color:Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
