import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterButton extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? iconColor;
  final double? iconSize;
  final bool? isMinSize;
  const TwitterButton(
      {Key? key,
      required this.onPressed,
      this.buttonColor,
      this.iconColor,
      this.iconSize,
      this.isMinSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      splashColor: Colors.white,
      mini: isMinSize ?? true,
      onPressed: onPressed as void Function()?,
      backgroundColor: buttonColor ?? Color(0xFF1DA1F2),
      child: Icon(
        FontAwesomeIcons.twitter,
        color: iconColor ?? Colors.white,
        size: iconSize,
      ),
    );
  }
}
