import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/custom_buttons.dart';

class SignInWithEmail extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? fontColor;
  final double? fontSize;
  final String? title;

  const SignInWithEmail(
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
        title ?? 'Sign in with Email',
        buttonColor ?? Colors.lightBlue,
        onPressed,
        fontColor ?? Colors.white,
        fontSize ?? 24.0,
        Icons.mail);
  }
}
