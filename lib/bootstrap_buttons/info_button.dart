import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/custom_buttons.dart';

class InfoButtton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const InfoButtton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomButtons.customFlatButton(title, Color(0xFF02A4E2), onPressed);
  }
}
