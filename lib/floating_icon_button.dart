import 'package:flutter/material.dart';

class FloatingIconButton extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final IconData icon;
  final Color? color;

  const FloatingIconButton(
      {Key? key,
      required this.onPressed,
      this.buttonColor,
      required this.icon,
      this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: onPressed as void Function()?,
        backgroundColor: buttonColor ?? Colors.blue,
        child: Icon(icon));
  }
}
