import 'package:flutter/material.dart';

// *****************************************************Simple Buttons ****************************************************
// *****************************************Success Button ***************************

class CustomButtons {
  static Widget customFlatButton(
      String title, Color bgColor, Function onPressed,
      [isIconButton = false,
      IconData icon = Icons.check_circle,
      Color textColor = Colors.white]) {
    return !isIconButton
        ? TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(bgColor)),
            onPressed: onPressed as void Function()?,
            child: Text(
              "$title",
              style: TextStyle(color: Colors.white),
            ),
          )
        : TextButton.icon(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(bgColor)),
            onPressed: onPressed as void Function()?,
            icon: Icon(
              icon,
              color: textColor,
            ),
            label: Text(
              "$title",
              style: TextStyle(color: textColor),
            ));
  }

  static Widget customOutlinedButton(
      String title, Color lineColor, Function onPressed, Color textColor) {
    return OutlinedButton(
      style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(color: lineColor))),
      onPressed: onPressed as void Function()?,
      child: Text(
        "$title",
        style: TextStyle(color: lineColor),
      ),
    );
  }

  static Widget customSignInButton(
      String title, Color buttonColor, Function onPressed,
      [Color fontColor = Colors.white,
      double fontSize = 24.0,
      IconData icon = Icons.mail]) {
    return TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          padding:
              MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12.0))),
      onPressed: onPressed as void Function()?,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: fontColor,
            size: fontSize,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            title,
            style: TextStyle(
              color: fontColor,
            ),
          ),
        ],
      ),
    );
  }
}
