import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MicrosoftButton extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? iconColor;
  final double? iconSize;
  final bool? isMinSize;
  const MicrosoftButton(
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
      splashColor: Colors.black,
      mini: isMinSize ?? true,
      onPressed: onPressed as void Function()?,
      backgroundColor: buttonColor ?? Color(0xFFF0EFE7),
      child: Icon(
        FontAwesomeIcons.microsoft,
        color: iconColor ?? Colors.lightBlue,
        size: iconSize,
      ),
    );
  }
}
