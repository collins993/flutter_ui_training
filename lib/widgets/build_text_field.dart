import 'package:flutter/material.dart';

class BuildTextField extends StatelessWidget {

  final IconData icon;
  final String hintText;
  final bool isPassword;
  final bool isEmail;

  const BuildTextField({Key key, this.icon, this.hintText, this.isPassword, this.isEmail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        obscureText: isPassword,
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.black,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey[300],
              ),
              borderRadius: BorderRadius.all(Radius.circular(35.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey[300],
              ),
              borderRadius: BorderRadius.all(Radius.circular(35.0)),
            ),
            contentPadding: EdgeInsets.all(10),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            )),
      ),
    );
  }
}
