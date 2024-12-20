import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/screens/details/details_screen.dart';


class Features extends StatelessWidget {
  const Features({
    super.key,
    required this.image,
    required this.title,
    required this.feature_number,
    required this.press,
  });
  final String image, title;
  final int feature_number;
  final Function press;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding/2,
          bottom: kDefaultPadding*2.5),
      width: size.width*0.4,
      child: Column(
        children: <Widget>[
          GestureDetector(child: Image.asset(image),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),),);
          },),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),),);
            },
            child:
            Container(padding: EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23)
                    )
                  ]
              ),
              child: Row(
                children: <Widget>[RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.labelLarge,

                      ),
                      TextSpan(text:'$feature_number'.toUpperCase(), style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                    ],
                  ),
                ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

