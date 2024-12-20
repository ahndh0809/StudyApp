import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/size_config.dart';


class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?",
          style: TextStyle(fontSize: getProportionateScreenWidth(16),),
        ),
        GestureDetector(
          onTap: (){},
          child: Text("Sign Up",
            style: TextStyle(fontSize: getProportionateScreenWidth(16),
                color: kSecondaryColor),
          ),
        ),
      ],);
  }
}

