import 'package:flutter/material.dart';

class BuildSubmitButtonWithShadow extends StatelessWidget {

  final bool showShadow;

  const BuildSubmitButtonWithShadow({Key key, this.showShadow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSignUpScreen = true;
    return AnimatedPositioned(
      duration: Duration(milliseconds: 700),
      curve: Curves.bounceInOut,
      top: isSignUpScreen ? 438 : 370,
      right: 0,
      left: 0,
      child: Center(
        child: Container(
          height: 90,
          width: 90,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              if (showShadow)
                BoxShadow(
                  color: Colors.black.withOpacity(.3),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 1),
                ),
            ],
          ),
          child: !showShadow
              ? Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orange[200], Colors.red[400]],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.3),
                  spreadRadius: 1.5,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          )
              : Center(),
        ),
      ),
    );
  }
}
