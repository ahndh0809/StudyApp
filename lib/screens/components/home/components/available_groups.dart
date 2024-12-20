import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/screens/details/details_screen.dart';


class Available_Groups extends StatelessWidget {
  const Available_Groups({
    super.key,
    required this.image,
    required this.press,
  }
  );

  final String image;
  final Function press;



  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){press(); // `press` 콜백 호출
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreen(),
        ),
      );
      },
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          top: kDefaultPadding/2,
          bottom: kDefaultPadding/2,),
        width: size.width,
        height: 185,
        decoration: BoxDecoration(
          border: Border.all(
              color:
          Colors.black,
          width: 2.5,
          ),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(image,))
        ),),
    );
  }
}

