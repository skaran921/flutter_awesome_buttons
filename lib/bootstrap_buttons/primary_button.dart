import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/custom_buttons.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const PrimaryButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomButtons.customFlatButton(title, Color(0xFF0077E0), onPressed);
  }
}
