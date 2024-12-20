import 'package:flutter/material.dart';
import 'package:project/components/default_button.dart';
import 'package:project/constants.dart';
import 'package:project/screens/forgot_password/forgot_password_screen.dart';
import 'package:project/screens/login_success/login_success_screen.dart';
import 'package:project/size_config.dart';
import 'package:project/components/custom_surffix_icon.dart';
import 'package:project/components/form_error.dart';


class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? email;
  String? password;
  bool remember= false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, // Corrected key
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(25)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(10)),
            Row(
              children: [
                Checkbox(value: remember,
                  activeColor:kSecondaryColor,
                  onChanged: (value){
                    setState(() {
                      remember= value ?? false;
                    });
                  },),
                Text("Remember me"),
                Spacer(),
                GestureDetector(
                  onTap: ()=> Navigator.pushNamed(
                      context,ForgotPasswordScreen.routeName),
                  child: Text("Forgot Password",style:
                  TextStyle(decoration: TextDecoration.underline),),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20),),
            DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  // Clear previous errors
                  setState(() {
                    errors.clear();
                  });
                  _formKey.currentState?.save();
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                  print("Form is valid");
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,

      keyboardType: TextInputType.text, // Changed from emailAddress
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            errors.remove("Please enter your password");
          });
        }
        return;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          if (!errors.contains("Please enter your password")) { // 중복 확인
            setState(() {
              errors.add("Please enter your password");
            });
            return "";
          }

          return "";
        }
        else if (value.length<8 && !errors.contains(kShortPassError)){
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/Icons/lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            errors.remove("Please enter your email");
          });
        } else if (emailValidatorRegExp.hasMatch(value)&& errors.contains(kInvalidEmailError)
        ){
          setState(() {
            errors.remove(kInvalidEmailError);
          });}

        return;

      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          if (!errors.contains("Please enter your email")) { // 중복 확인
            setState(() {
              errors.add("Please enter your email");
            });
            return "";
          } else if(value != null &&
              !emailValidatorRegExp.hasMatch(value) &&
              !errors.contains(kInvalidEmailError)){
            setState(() {
              errors.add(kInvalidEmailError);
            });
            return "";
          }
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/Icons/mail.svg"),
      ),
    );
  }
}
