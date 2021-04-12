import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_ui_training/widgets/build_text_field.dart';

class BuildLogInScreen extends StatefulWidget {
  @override
  _BuildLogInScreenState createState() => _BuildLogInScreenState();
}

class _BuildLogInScreenState extends State<BuildLogInScreen> {

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
              icon: Icons.mail_outline,
              hintText: "example@mail.com",
              isEmail: false,
              isPassword: true,
          ),
          BuildTextField(
              icon: MaterialCommunityIcons.lock_outline,
              hintText: "******",
              isEmail: true,
              isPassword: false,
          ),

          //remember me and forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isRememberMe,
                    activeColor: Colors.grey,
                    onChanged: (value) {
                      setState(() {
                        isRememberMe = !isRememberMe;
                      });
                    },
                  ),
                  Text(
                    "Remember me",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
