import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/custom_buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInWithInstagram extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? fontColor;
  final double? fontSize;
  final String? title;

  const SignInWithInstagram(
      {Key? key,
      required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomButtons.customSignInButton(
        title ?? 'Sign in with Instagram',
        buttonColor ?? Color(0xFFB81877),
        onPressed,
        fontColor ?? Colors.white,
        fontSize ?? 24.0,
        FontAwesomeIcons.instagram);
  }
}
