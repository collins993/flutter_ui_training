import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_ui_training/widgets/build_text_field.dart';

class BuildSignUpScreen extends StatefulWidget {
  @override
  _BuildSignUpScreenState createState() => _BuildSignUpScreenState();
}

class _BuildSignUpScreenState extends State<BuildSignUpScreen> {

  bool isMale = true;
  bool isSignUpScreen = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          BuildTextField(
            icon: MaterialCommunityIcons.account_outline,
            hintText: "User Name",
            isEmail: false,
            isPassword: false,
          ),
          BuildTextField(
            icon: MaterialCommunityIcons.email_outline,
            hintText: "Email",
            isEmail: false,
            isPassword: true,
          ),
          BuildTextField(
            icon: MaterialCommunityIcons.email_outline,
            hintText: "Password",
            isEmail: true,
            isPassword: false,
          ),

          //gender radio
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: isMale ? Colors.grey : Colors.transparent,
                          border: Border.all(
                            width: 1,
                            color: isMale ? Colors.transparent : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          MaterialCommunityIcons.account_outline,
                          color: isMale ? Colors.white : Colors.grey,
                        ),
                      ),
                      Text(
                        "Male",
                        style: TextStyle(color: Colors.grey[300]),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: isMale ? Colors.transparent : Colors.grey[600],
                          border: Border.all(
                            width: 1,
                            color: isMale ? Colors.grey : Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          MaterialCommunityIcons.account_outline,
                          color: isMale ? Colors.grey : Colors.white,
                        ),
                      ),
                      Text(
                        "Female",
                        style: TextStyle(color: Colors.grey[300]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          //terms and conditions
          Container(
            width: 200,
            margin: EdgeInsets.only(top: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "By pressing 'Submit' you agree to our ",
                  style: TextStyle(color: Colors.grey[300]),
                  children: [
                    TextSpan(
                      text: "term & conditions",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
