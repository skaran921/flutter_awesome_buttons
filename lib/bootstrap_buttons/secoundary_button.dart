import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/custom_buttons.dart';

class SecoundaryButtton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const SecoundaryButtton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomButtons.customFlatButton(title, Color(0xFFF8F8F8), onPressed);
  }
}
