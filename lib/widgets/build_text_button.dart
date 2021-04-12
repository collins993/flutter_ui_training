import 'package:flutter/material.dart';

class BuildTextButton extends StatelessWidget {

  final IconData icon;
  final String title;
  final Color backGroundColor;

  const BuildTextButton({Key key, this.icon, this.title, this.backGroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        side: BorderSide(width: 1, color: Colors.grey),
        minimumSize: Size(155, 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        primary: Colors.white,
        backgroundColor: backGroundColor,
      ),
      child: Row(
        children: [
          Icon(
            icon,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            title,
          )
        ],
      ),
    );
  }
}
