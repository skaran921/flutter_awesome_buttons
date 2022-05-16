import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/custom_buttons.dart';

class DefaultLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color? textColor;
  const DefaultLineButton(
      {Key? key, required this.title, required this.onPressed, this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomButtons.customOutlinedButton(
        title, Color(0xFF0EB0A1), onPressed, textColor ?? Color(0xFF0EB0A1));
  }
}
