import 'package:flutter/material.dart';

class GredientButton extends StatelessWidget {
  final double? radius;
  final Color? splashColor;
  final Color? textColor;
  final Color? buttonColor;
  final String title;
  final Function onPressed;
  final List<Color> colors;

  const GredientButton(
      {Key? key,
      this.radius,
      this.splashColor,
      this.textColor,
      this.buttonColor,
      required this.title,
      required this.onPressed,
      required this.colors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius ?? 6),
      onTap: onPressed as void Function()?,
      splashColor: splashColor ?? Colors.blue,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 6),
          gradient: LinearGradient(colors: colors),
          color: buttonColor ?? Colors.blue,
          boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.08))],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "$title",
            style: TextStyle(color: textColor ?? Colors.white),
          ),
        ),
      ),
    );
  }
}
