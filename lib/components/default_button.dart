import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required this.text,
    required this.press,
    super.key,
  });
  final String text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(350),
      height: getProportionateScreenHeight(56),
      child: TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: kSecondaryColor,
        ),
        child: Text(
          text, style: TextStyle(fontSize: getProportionateScreenWidth(18)),),
      ),
    );
  }
}
