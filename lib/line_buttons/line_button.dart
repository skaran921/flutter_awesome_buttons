import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/custom_buttons.dart';

class LineButton extends StatelessWidget {
  final Color? lineColor;
  final Color? textColor;
  final String title;
  final Function onPressed;

  const LineButton(
      {Key? key,
      this.lineColor,
      required this.title,
      required this.onPressed,
      this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomButtons.customOutlinedButton(title, lineColor ?? Colors.green,
        onPressed, textColor ?? lineColor ?? Colors.green);
  }
}
