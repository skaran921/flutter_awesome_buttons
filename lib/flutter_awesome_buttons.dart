library flutter_buttons;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// *****************************************************Simple Buttons ****************************************************
// *****************************************Success Button ***************************

Widget _customFlatButton(String title, Color bgColor, Function onPressed,
    [isIconButton = false,
    IconData icon = Icons.check_circle,
    Color textColor = Colors.white]) {
  return !isIconButton
      ? TextButton(
          style:
              ButtonStyle(backgroundColor: MaterialStateProperty.all(bgColor)),
          onPressed: onPressed as void Function()?,
          child: Text(
            "$title",
            style: TextStyle(color: Colors.white),
          ),
        )
      : TextButton.icon(
          style:
              ButtonStyle(backgroundColor: MaterialStateProperty.all(bgColor)),
          onPressed: onPressed as void Function()?,
          icon: Icon(
            icon,
            color: textColor,
          ),
          label: Text(
            "$title",
            style: TextStyle(color: textColor),
          ));
}

Widget _customOutlinedButton(
    String title, Color lineColor, Function onPressed, Color textColor) {
  return OutlinedButton(
    style: ButtonStyle(
        side: MaterialStateProperty.all(BorderSide(color: lineColor))),
    onPressed: onPressed as void Function()?,
    child: Text(
      "$title",
      style: TextStyle(color: lineColor),
    ),
  );
}

Widget _customSignInButton(String title, Color buttonColor, Function onPressed,
    [Color fontColor = Colors.white,
    double fontSize = 24.0,
    IconData icon = Icons.mail]) {
  return TextButton(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        padding:
            MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12.0))),
    onPressed: onPressed as void Function()?,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: fontColor,
          size: fontSize,
        ),
        SizedBox(
          width: 4.0,
        ),
        Text(
          title,
          style: TextStyle(
            color: fontColor,
          ),
        ),
      ],
    ),
  );
}

class SuccessButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const SuccessButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customFlatButton(title, Color(0xFF2DBF64), onPressed);
  }
}
// *****************************************Success Button ***************************

// *****************************************Danger Button ***************************
class DangerButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const DangerButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customFlatButton(title, Color(0xFFED2F2F), onPressed);
  }
}
// *****************************************Danger Button ***************************

// *****************************************Primary Button ***************************
class PrimaryButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const PrimaryButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customFlatButton(title, Color(0xFF0077E0), onPressed);
  }
}
// *****************************************Primary Button ***************************

// *****************************************Warning Button ***************************
class WarningButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const WarningButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customFlatButton(title, Color(0xFFFF6F10), onPressed);
  }
}
// *****************************************Primary Button ***************************

// *****************************************Disabled Button ***************************
class DisabledButtton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const DisabledButtton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customFlatButton(title, Color(0xFFBFBFC4), onPressed);
  }
}
// *****************************************Disabled Button ***************************

// *****************************************Secoundary Button ***************************
class SecoundaryButtton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const SecoundaryButtton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customFlatButton(title, Color(0xFFF8F8F8), onPressed);
  }
}
// *****************************************Secoundary Button ***************************

// *****************************************Dark Button ***************************
class DarkButtton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const DarkButtton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customFlatButton(title, Color(0xFF2A2A2A), onPressed);
  }
}
// *****************************************Dark Button ***************************

// *****************************************Info Button ***************************
class InfoButtton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const InfoButtton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customFlatButton(title, Color(0xFF02A4E2), onPressed);
  }
}
// *****************************************Info Button ***************************

// *****************************************Secondary  Button ***************************
class SecondaryButtton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const SecondaryButtton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customFlatButton(title, Color(0xFF9742c1), onPressed);
  }
}
// *****************************************Info Button ***************************

// *****************************************************Simple Buttons ending****************************************************

// *****************************************************Icons Buttons ****************************************************
// *****************************************ButttonWithIcon Button ***************************
class ButttonWithIcon extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color? buttonColor;
  final IconData icon;
  final Color? color;

  const ButttonWithIcon(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.buttonColor,
      required this.icon,
      this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customFlatButton(title, buttonColor ?? Colors.blue, onPressed, true,
        icon, color ?? Colors.white);
  }
}
// *****************************************ButttonWithIcon Button ***************************

// *****************************************FloatingIconButton Button ***************************
class FloatingIconButton extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final IconData icon;
  final Color? color;

  const FloatingIconButton(
      {Key? key,
      required this.onPressed,
      this.buttonColor,
      required this.icon,
      this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: onPressed as void Function()?,
        backgroundColor: buttonColor ?? Colors.blue,
        child: Icon(icon));
  }
}
// *****************************************FloatingIconButton Button ***************************
// *****************************************************Icons Buttons ****************************************************

// ********************************************************Line Buttons  ****************************************************
// ********************************************************1. Line Button  ****************************************************
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
    return _customOutlinedButton(title, lineColor ?? Colors.green, onPressed,
        textColor ?? lineColor ?? Colors.green);
  }
}

// ******************************************************** Line Buttons  ****************************************************
// ********************************************************2. PrimaryLine Button  ****************************************************
class PrimaryLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color? textColor;
  const PrimaryLineButton(
      {Key? key, required this.title, required this.onPressed, this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customOutlinedButton(
        title, Color(0xFF1568F2), onPressed, textColor ?? Color(0xFF1568F2));
  }
}
// ********************************************************PrimaryLine Buttons  ****************************************************

// ********************************************************2. DefaultLine Button  ****************************************************
class DefaultLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color? textColor;
  const DefaultLineButton(
      {Key? key, required this.title, required this.onPressed, this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customOutlinedButton(
        title, Color(0xFF0EB0A1), onPressed, textColor ?? Color(0xFF0EB0A1));
  }
}
// ********************************************************DefaultLine Buttons  ****************************************************

// ********************************************************SecoundaryLineButton****************************************************
class SecoundaryLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color? textColor;
  const SecoundaryLineButton(
      {Key? key, required this.title, required this.onPressed, this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customOutlinedButton(
        title, Color(0xFF9742c1), onPressed, textColor ?? Color(0xFF9742c1));
  }
}
// ********************************************************SecoundaryLineButton ****************************************************

// ********************************************************SuccessLineButton****************************************************
class SuccessLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color? textColor;
  const SuccessLineButton(
      {Key? key, required this.title, required this.onPressed, this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customOutlinedButton(
        title, Color(0xFF28a745), onPressed, textColor ?? Color(0xFF28a745));
  }
}
// ********************************************************SuccessLineButton ****************************************************

// ********************************************************InfoLineButton****************************************************
class InfoLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color? textColor;
  const InfoLineButton(
      {Key? key, required this.title, required this.onPressed, this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customOutlinedButton(
        title, Color(0xFF02A4E2), onPressed, textColor ?? Color(0xFF02A4E2));
  }
}
// ********************************************************SuccessLineButton ****************************************************

// ********************************************************WarningLineButton****************************************************
class WarningLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color? textColor;
  const WarningLineButton(
      {Key? key, required this.title, required this.onPressed, this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customOutlinedButton(
        title, Color(0xFFFF8800), onPressed, textColor ?? Color(0xFF02A4E2));
  }
}
// ********************************************************WarningLineButton ****************************************************

// ********************************************************DangerLineButton****************************************************
class DangerLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color? textColor;
  const DangerLineButton(
      {Key? key, required this.title, required this.onPressed, this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customOutlinedButton(
        title, Color(0xFFFF3549), onPressed, textColor ?? Color(0xFF02A4E2));
  }
}
// ********************************************************DangerLineButton ****************************************************

// ********************************************************Line Buttons  ending****************************************************

// ********************************************************Rounded Buttons ****************************************************
class RoundedButton extends StatelessWidget {
  final double? radius;
  final Color? splashColor;
  final Color? textColor;
  final Color? buttonColor;
  final String title;
  final Function onPressed;

  const RoundedButton(
      {Key? key,
      this.radius,
      this.splashColor,
      this.textColor,
      this.buttonColor,
      required this.title,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius ?? 50),
      onTap: onPressed as void Function()?,
      splashColor: splashColor ?? Colors.blue,
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 50),
            color: buttonColor ?? Colors.blue,
            boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.08))]),
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
// ********************************************************Rounded Buttons  ending****************************************************

// ********************************************************RoundedIcon Buttons ****************************************************
class RoundedButtonWithIcon extends StatelessWidget {
  final double? radius;
  final Color? splashColor;
  final Color? textColor;
  final Color? buttonColor;
  final String title;
  final Function onPressed;
  final IconData icon;
  const RoundedButtonWithIcon(
      {Key? key,
      this.radius,
      this.splashColor,
      this.textColor,
      this.buttonColor,
      required this.title,
      required this.onPressed,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius ?? 50),
      onTap: onPressed as void Function()?,
      splashColor: splashColor ?? Colors.blue,
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 50),
            color: buttonColor ?? Colors.blue,
            boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.08))]),
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
                Icon(
                  icon,
                  color: textColor ?? Colors.white,
                ),
                Text(
                  "$title",
                  style: TextStyle(color: textColor ?? Colors.white),
                ),
              ],
            )),
      ),
    );
  }
}

// ********************************************************RoundedIcon Buttons  ending****************************************************

// ********************************************************Sign In Buttons ************************************************************
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
    return _customSignInButton(
        title ?? 'Sign in with Email',
        buttonColor ?? Colors.lightBlue,
        onPressed,
        fontColor ?? Colors.white,
        fontSize ?? 24.0,
        Icons.mail);
  }
}

class SignInWithGoogle extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? fontColor;
  final double? fontSize;
  final String? title;

  const SignInWithGoogle(
      {Key? key,
      required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customSignInButton(
        title ?? 'Sign in with Google',
        buttonColor ?? Colors.blue,
        onPressed,
        fontColor ?? Colors.white,
        fontSize ?? 24.0,
        FontAwesomeIcons.google);
  }
}

class SignInWithFacebook extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? fontColor;
  final double? fontSize;
  final String? title;

  const SignInWithFacebook(
      {Key? key,
      required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customSignInButton(
        title ?? 'Sign in with Facebook',
        buttonColor ?? Colors.lightBlue,
        onPressed,
        fontColor ?? Colors.white,
        fontSize ?? 24.0);
  }
}

class SignInWithTwitter extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? fontColor;
  final double? fontSize;
  final String? title;

  const SignInWithTwitter(
      {Key? key,
      required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customSignInButton(
        title ?? 'Sign in with Twitter',
        buttonColor ?? Colors.lightBlue,
        onPressed,
        fontColor ?? Colors.white,
        fontSize ?? 24.0,
        FontAwesomeIcons.twitter);
  }
}

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
    return _customSignInButton(
        title ?? 'Sign in with Instagram',
        buttonColor ?? Color(0xFFB81877),
        onPressed,
        fontColor ?? Colors.white,
        fontSize ?? 24.0,
        FontAwesomeIcons.instagram);
  }
}

class SignInWithGithub extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? fontColor;
  final double? fontSize;
  final String? title;

  const SignInWithGithub(
      {Key? key,
      required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customSignInButton(
        title ?? 'Sign in with Github',
        buttonColor ?? Colors.black,
        onPressed,
        fontColor ?? Colors.white,
        fontSize ?? 24.0,
        FontAwesomeIcons.github);
  }
}

class SignInWithLinkedin extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? fontColor;
  final double? fontSize;
  final String? title;

  const SignInWithLinkedin(
      {Key? key,
      required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customSignInButton(
        title ?? 'Sign in with Linkedin',
        buttonColor ?? Color(0xFF0077B5),
        onPressed,
        fontColor ?? Colors.white,
        fontSize ?? 24.0,
        FontAwesomeIcons.linkedin);
  }
}

class SignInWithPinterest extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? fontColor;
  final double? fontSize;
  final String? title;

  const SignInWithPinterest(
      {Key? key,
      required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customSignInButton(
        title ?? 'Sign in with Pinterest',
        buttonColor ?? Color(0xFFE60023),
        onPressed,
        fontColor ?? Colors.white,
        fontSize ?? 24.0,
        FontAwesomeIcons.pinterest);
  }
}

class SignInWithApple extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? fontColor;
  final double? fontSize;
  final String? title;

  const SignInWithApple(
      {Key? key,
      required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customSignInButton(
        title ?? 'Sign in with Apple',
        buttonColor ?? Color(0xFF333333),
        onPressed,
        fontColor ?? Colors.white,
        fontSize ?? 24.0,
        FontAwesomeIcons.apple);
  }
}

class SignInWithMicrosoft extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? fontColor;
  final double? fontSize;
  final String? title;

  const SignInWithMicrosoft(
      {Key? key,
      required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _customSignInButton(
        title ?? 'Sign in with Microsoft',
        buttonColor ?? Color(0xFFF0EFE7),
        onPressed,
        fontColor ?? Colors.black,
        fontSize ?? 24.0,
        FontAwesomeIcons.microsoft);
  }
}
// *******************************************************Sign In Buttons  ************************************************************

// *******************************************************Social Buttons *****************************************
class FacebookButton extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? iconColor;
  final double? iconSize;
  final bool? isMinSize;
  const FacebookButton(
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
      backgroundColor: buttonColor ?? Color(0xFF49659F),
      child: Icon(
        FontAwesomeIcons.facebookF,
        color: iconColor ?? Colors.white,
        size: iconSize,
      ),
    );
  }
}

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

class GoogleButton extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? iconColor;
  final double? iconSize;
  final bool? isMinSize;
  const GoogleButton(
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
      backgroundColor: buttonColor ?? Colors.blue,
      child: Icon(
        FontAwesomeIcons.google,
        color: iconColor ?? Colors.white,
        size: iconSize,
      ),
    );
  }
}

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

class InstagramButton extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? iconColor;
  final double? iconSize;
  final bool? isMinSize;
  const InstagramButton(
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
      backgroundColor: buttonColor ?? Color(0xFFB81877),
      child: Icon(
        FontAwesomeIcons.instagram,
        color: iconColor ?? Colors.white,
        size: iconSize,
      ),
    );
  }
}

class LinkedinButton extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? iconColor;
  final double? iconSize;
  final bool? isMinSize;
  const LinkedinButton(
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
      backgroundColor: buttonColor ?? Color(0xFF0077B5),
      child: Icon(
        FontAwesomeIcons.linkedinIn,
        color: iconColor ?? Colors.white,
        size: iconSize,
      ),
    );
  }
}

class PinterestButton extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? iconColor;
  final double? iconSize;
  final bool? isMinSize;
  const PinterestButton(
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
      backgroundColor: buttonColor ?? Colors.blue,
      child: Icon(
        FontAwesomeIcons.pinterest,
        color: iconColor ?? Colors.white,
        size: iconSize,
      ),
    );
  }
}

class GithubButton extends StatelessWidget {
  final Function onPressed;
  final Color? buttonColor;
  final Color? iconColor;
  final double? iconSize;
  final bool? isMinSize;
  const GithubButton(
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
      backgroundColor: buttonColor ?? Colors.black,
      child: Icon(
        FontAwesomeIcons.github,
        color: iconColor ?? Colors.white,
        size: iconSize,
      ),
    );
  }
}

// *******************************************************Social Buttons *****************************************

// ******************************************************gredientButton *********************************************
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

// ******************************************************gredientButton *********************************************