import 'package:flutter/material.dart';
import 'package:project/components/default_button.dart';
import 'package:project/components/form_error.dart';
import 'package:project/components/no_account_text.dart';
import 'package:project/size_config.dart';
import 'package:project/constants.dart';
import 'package:project/components/custom_surffix_icon.dart';



class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child:
            Padding(padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child:
        Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight*0.04,),
            Text("Forgot Password",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(28),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text("Please enter your email and we will send \nyou a link to return to your account",
            textAlign: TextAlign.center,),
            SizedBox(height: SizeConfig.screenHeight*0.1,),
            ForgotPassForm(),

          ],
        ),
      ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey= GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [ // Use the named parameter 'children'
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue ?? '',
            onChanged: (value) {
              if (value.isNotEmpty) {
                setState(() {
                  errors.remove("Please enter your email");
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                if (!errors.contains("Please enter your email")) {
                  setState(() {
                    errors.add("Please enter your email");
                  });
                }
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/Icons/mail.svg"),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30),
          ),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight*0.1,),
          DefaultButton(
              text: "Continue",
              press: () {
                if(_formKey.currentState != null && _formKey.currentState!.validate()){


                }
              }
          ),
          SizedBox(height: SizeConfig.screenHeight*0.1,),

          NoAccountText(),
          ...errors.map((error) => Text(
            error,
            style: const TextStyle(color: Colors.red),
          )),
        ],
      ),
    );
  }
}
