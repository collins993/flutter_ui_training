import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_ui_training/widgets/build_login_screen.dart';
import 'package:flutter_ui_training/widgets/build_sign_up_screen.dart';
import 'package:flutter_ui_training/widgets/build_submit_button.dart';
import 'package:flutter_ui_training/widgets/build_text_button.dart';

class LoginSignUpScreen extends StatefulWidget {
  @override
  _LoginSignUpScreenState createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  bool isMale = true;
  bool isSignUpScreen = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: Stack(
        children: [
          //image container
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            //container for background image
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assests/background.jpg"),
                      fit: BoxFit.fill)),

              //container for background overlay
              child: Container(
                padding: EdgeInsets.only(top: 40, left: 20),
                //column for texts
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: isSignUpScreen ? "Welcome to " : "Welcome",
                          style: TextStyle(
                            letterSpacing: 2,
                            fontSize: 20,
                            color: Colors.yellow[700],
                          ),
                          children: [
                            TextSpan(
                              text: isSignUpScreen ? " CodeLocks" : " back,",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow[700],
                              ),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      isSignUpScreen
                          ? "SignUp to continue"
                          : "SignIn to continue",
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //adding shadow behind main container
          BuildSubmitButtonWithShadow(showShadow: true),

          //main container for login and signup
          AnimatedPositioned(
            duration: Duration(milliseconds: 700),
            curve: Curves.bounceInOut,
            top: isSignUpScreen ? 110 : 170,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 700),
              curve: Curves.bounceInOut,
              padding: EdgeInsets.all(20),
              height: isSignUpScreen ? 380 : 250,
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ]),
              child: SingleChildScrollView(

                child: Column(

                  children: [
                    //main container header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignUpScreen = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "LOGIN",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: !isSignUpScreen
                                        ? Colors.black
                                        : Colors.grey[300]),
                              ),
                              if (!isSignUpScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.orange,
                                )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignUpScreen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "SIGNUP",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: isSignUpScreen
                                        ? Colors.black
                                        : Colors.grey[300]),
                              ),
                              if (isSignUpScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.orange,
                                )
                            ],
                          ),
                        )
                      ],
                    ),

                    //login and sign-up screen
                    if (isSignUpScreen) BuildSignUpScreen(),
                    if (!isSignUpScreen) BuildLogInScreen(),
                  ],
                ),
              ),
            ),
          ),

          //add submit button
          BuildSubmitButtonWithShadow(showShadow: false),

          //bottom buttons
          Positioned(
            top: MediaQuery.of(context).size.height - 100,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Text(isSignUpScreen ? "Or Signup with" : "Or Signin with"),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BuildTextButton(
                          icon: MaterialCommunityIcons.facebook,
                          title: "Facebook",
                          backGroundColor: Colors.blue[900],
                      ),
                      BuildTextButton(
                        icon: MaterialCommunityIcons.google_plus,
                        title: "Google",
                        backGroundColor: Colors.red[600],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
