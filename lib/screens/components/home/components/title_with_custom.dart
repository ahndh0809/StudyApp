import 'package:flutter/material.dart';
import 'package:project/constants.dart';

class TitleWithCustom extends StatelessWidget {
  const TitleWithCustom({
    super.key,
    required this.title,
    required this.press,
  });
  final String title;
  final Function press;



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding,
            right: kDefaultPadding,
            bottom: 0.05,
            top: 0.05),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                TextButton(

                  onPressed: (){}, // 기존 onPressed 값 유지
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor, // 버튼 배경색
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.only(left: kDefaultPadding/3,
                        right: kDefaultPadding/3)

                  ),
                  child: Text(
                    "More",
                    style: TextStyle(

                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0// 텍스트 색상
                    ),
                  ),
                ),

              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child:Container(


              )
          ),
        ],
      ),
    );
  }
}
