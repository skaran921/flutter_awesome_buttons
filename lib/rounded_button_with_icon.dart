import 'package:flutter/material.dart';

class RoundedButtonWithIcon extends StatelessWidget {
  final double? radius;
  final Color? splashColor;
  final Color? textColor;
  final Color? buttonColor;
  final String title;
  final Function onPressed;
  final IconData icon;
  const RoundedButtonWithIcon(
      {Key? key,
      this.radius,
      this.splashColor,
      this.textColor,
      this.buttonColor,
      required this.title,
      required this.onPressed,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius ?? 50),
      onTap: onPressed as void Function()?,
      splashColor: splashColor ?? Colors.blue,
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 50),
            color: buttonColor ?? Colors.blue,
            boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.08))]),
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
                Icon(
                  icon,
                  color: textColor ?? Colors.white,
                ),
                Text(
                  "$title",
                  style: TextStyle(color: textColor ?? Colors.white),
                ),
              ],
            )),
      ),
    );
  }
}
