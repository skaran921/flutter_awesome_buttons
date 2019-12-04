library flutter_buttons;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// *****************************************************Simple Buttons ****************************************************
// *****************************************Success Button ***************************
class SuccessButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const SuccessButton({Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: Color(
        0xFF2DBF64,
      ),
      child: Text(
        "$title",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
// *****************************************Success Button ***************************

// *****************************************Danger Button ***************************
class DangerButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const DangerButton({Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: Color(
        0xFFED2F2F,
      ),
      child: Text(
        "$title",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
// *****************************************Danger Button ***************************

// *****************************************Primary Button ***************************
class PrimaryButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const PrimaryButton({Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: Color(
        0xFF0077E0,
      ),
      child: Text(
        "$title",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
// *****************************************Primary Button ***************************

// *****************************************Warning Button ***************************
class WarningButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const WarningButton({Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: Color(
        0xFFFF6F10,
      ),
      child: Text(
        "$title",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
// *****************************************Primary Button ***************************

// *****************************************Disabled Button ***************************
class DisabledButtton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const DisabledButtton(
      {Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: Color(
        0xFFBFBFC4,
      ),
      child: Text(
        "$title",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
// *****************************************Disabled Button ***************************

// *****************************************Secoundary Button ***************************
class SecoundaryButtton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const SecoundaryButtton(
      {Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: Color(
        0xFFF8F8F8,
      ),
      child: Text(
        "$title",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
// *****************************************Secoundary Button ***************************

// *****************************************Dark Button ***************************
class DarkButtton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const DarkButtton({Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: Color(
        0xFF2A2A2A,
      ),
      child: Text(
        "$title",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
// *****************************************Dark Button ***************************

// *****************************************Info Button ***************************
class InfoButtton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const InfoButtton({Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: Color(
        0xFF02A4E2,
      ),
      child: Text(
        "$title",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
// *****************************************Info Button ***************************

// *****************************************Secondary  Button ***************************
class SecondaryButtton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const SecondaryButtton(
      {Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: Color(
        0xFF9742c1,
      ),
      child: Text(
        "$title",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
// *****************************************Info Button ***************************

// *****************************************************Simple Buttons ending****************************************************

// *****************************************************Icons Buttons ****************************************************
// *****************************************ButttonWithIcon Button ***************************
class ButttonWithIcon extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color buttonColor;
  final IconData icon;
  final Color color;

  const ButttonWithIcon(
      {Key key,
      @required this.title,
      @required this.onPressed,
      this.buttonColor,
      @required this.icon,
      this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: onPressed,
        color: buttonColor ?? Colors.blue,
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: color ?? Colors.white,
            ),
            SizedBox(
              width: 2.0,
            ),
            Text(
              "$title",
              style: TextStyle(color: color ?? Colors.white),
            ),
          ],
        ));
  }
}
// *****************************************ButttonWithIcon Button ***************************

// *****************************************FloatingIconButton Button ***************************
class FloatingIconButton extends StatelessWidget {
  final Function onPressed;
  final Color buttonColor;
  final IconData icon;
  final Color color;

  const FloatingIconButton(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      @required this.icon,
      this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: buttonColor ?? Colors.blue,
        child: Icon(icon));
  }
}
// *****************************************FloatingIconButton Button ***************************
// *****************************************************Icons Buttons ****************************************************

// ********************************************************Line Buttons  ****************************************************
// ********************************************************1. Line Button  ****************************************************
class LineButton extends StatelessWidget {
  final Color lineColor;
  final String title;
  final Function onPressed;

  const LineButton(
      {Key key, this.lineColor, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(color: lineColor ?? Colors.green),
      onPressed: onPressed,
      child: Text("$title"),
    );
  }
}

// ******************************************************** Line Buttons  ****************************************************
// ********************************************************2. PrimaryLine Button  ****************************************************
class PrimaryLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  const PrimaryLineButton(
      {Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(color: Color(0xFF1568F2)),
      onPressed: onPressed,
      child: Text("$title"),
    );
  }
}
// ********************************************************PrimaryLine Buttons  ****************************************************

// ********************************************************2. DefaultLine Button  ****************************************************
class DefaultLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  const DefaultLineButton(
      {Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(color: Color(0xFF0EB0A1)),
      onPressed: onPressed,
      child: Text("$title"),
    );
  }
}
// ********************************************************DefaultLine Buttons  ****************************************************

// ********************************************************SecoundaryLineButton****************************************************
class SecoundaryLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  const SecoundaryLineButton(
      {Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(color: Color(0xFF9742c1)),
      onPressed: onPressed,
      child: Text("$title"),
    );
  }
}
// ********************************************************SecoundaryLineButton ****************************************************

// ********************************************************SuccessLineButton****************************************************
class SuccessLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  const SuccessLineButton(
      {Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(color: Color(0xFF00BC29)),
      onPressed: onPressed,
      child: Text("$title"),
    );
  }
}
// ********************************************************SuccessLineButton ****************************************************

// ********************************************************InfoLineButton****************************************************
class InfoLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  const InfoLineButton(
      {Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(color: Color(0xFF02A4E2)),
      onPressed: onPressed,
      child: Text("$title"),
    );
  }
}
// ********************************************************SuccessLineButton ****************************************************

// ********************************************************WarningLineButton****************************************************
class WarningLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  const WarningLineButton(
      {Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(color: Color(0xFFFF8800)),
      onPressed: onPressed,
      child: Text("$title"),
    );
  }
}
// ********************************************************WarningLineButton ****************************************************

// ********************************************************DangerLineButton****************************************************
class DangerLineButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  const DangerLineButton(
      {Key key, @required this.title, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(color: Color(0xFFFF3549)),
      onPressed: onPressed,
      child: Text("$title"),
    );
  }
}
// ********************************************************DangerLineButton ****************************************************

// ********************************************************Line Buttons  ending****************************************************

// ********************************************************Rounded Buttons ****************************************************
class RoundedButton extends StatelessWidget {
  final double radius;
  final Color splashColor;
  final Color textColor;
  final Color buttonColor;
  final String title;
  final Function onPressed;

  const RoundedButton(
      {Key key,
      this.radius,
      this.splashColor,
      this.textColor,
      this.buttonColor,
      @required this.title,
      @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius ?? 50),
      onTap: onPressed,
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
  final double radius;
  final Color splashColor;
  final Color textColor;
  final Color buttonColor;
  final String title;
  final Function onPressed;
  final IconData icon;
  const RoundedButtonWithIcon(
      {Key key,
      this.radius,
      this.splashColor,
      this.textColor,
      this.buttonColor,
      @required this.title,
      @required this.onPressed,
      @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius ?? 50),
      onTap: onPressed,
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
  final Color buttonColor;
  final Color fontColor;
  final double fontSize;
  final String title;

  const SignInWithEmail(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 12.0),
      onPressed: onPressed,
      color: buttonColor ?? Colors.lightBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.mail,
            color: fontColor ?? Colors.white,
            size: fontSize,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            title ?? 'Sign in with Email',
            style: TextStyle(
              color: fontColor ?? Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class SignInWithGoogle extends StatelessWidget {
  final Function onPressed;
  final Color buttonColor;
  final Color fontColor;
  final double fontSize;
  final String title;

  const SignInWithGoogle(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 12.0),
      onPressed: onPressed,
      color: buttonColor ?? Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.google,
            color: fontColor ?? Colors.white,
            size: fontSize,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            title ?? 'Sign in with Google',
            style: TextStyle(
              color: fontColor ?? Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class SignInWithFacebook extends StatelessWidget {
  final Function onPressed;
  final Color buttonColor;
  final Color fontColor;
  final double fontSize;
  final String title;

  const SignInWithFacebook(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 12.0),
      onPressed: onPressed,
      color: buttonColor ?? Color(0xFF49659F),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.facebookSquare,
            color: fontColor ?? Colors.white,
            size: fontSize,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            title ?? 'Sign in with Facebook',
            style: TextStyle(
              color: fontColor ?? Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class SignInWithTwitter extends StatelessWidget {
  final Function onPressed;
  final Color buttonColor;
  final Color fontColor;
  final double fontSize;
  final String title;

  const SignInWithTwitter(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 12.0),
      onPressed: onPressed,
      color: buttonColor ?? Color(0xFF1DA1F2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.twitter,
            color: fontColor ?? Colors.white,
            size: fontSize,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            title ?? 'Sign in with Twitter',
            style: TextStyle(
              color: fontColor ?? Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class SignInWithInstagram extends StatelessWidget {
  final Function onPressed;
  final Color buttonColor;
  final Color fontColor;
  final double fontSize;
  final String title;

  const SignInWithInstagram(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 12.0),
      onPressed: onPressed,
      color: buttonColor ?? Color(0xFFB81877),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.instagram,
            color: fontColor ?? Colors.white,
            size: fontSize,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            title ?? 'Sign in with Instagram',
            style: TextStyle(
              color: fontColor ?? Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class SignInWithGithub extends StatelessWidget {
  final Function onPressed;
  final Color buttonColor;
  final Color fontColor;
  final double fontSize;
  final String title;

  const SignInWithGithub(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 12.0),
      onPressed: onPressed,
      color: buttonColor ?? Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.github,
            color: fontColor ?? Colors.white,
            size: fontSize,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            title ?? 'Sign in with Github',
            style: TextStyle(
              color: fontColor ?? Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class SignInWithLinkedin extends StatelessWidget {
  final Function onPressed;
  final Color buttonColor;
  final Color fontColor;
  final double fontSize;
  final String title;

  const SignInWithLinkedin(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 12.0),
      onPressed: onPressed,
      color: buttonColor ?? Color(0xFF0077B5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.linkedin,
            color: fontColor ?? Colors.white,
            size: fontSize,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            title ?? 'Sign in with Linkedin',
            style: TextStyle(
              color: fontColor ?? Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class SignInWithPinterest extends StatelessWidget {
  final Function onPressed;
  final Color buttonColor;
  final Color fontColor;
  final double fontSize;
  final String title;

  const SignInWithPinterest(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 12.0),
      onPressed: onPressed,
      color: buttonColor ?? Color(0xFFE60023),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.pinterest,
            color: fontColor ?? Colors.white,
            size: fontSize,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            title ?? 'Sign in with Pinterest',
            style: TextStyle(
              color: fontColor ?? Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class SignInWithApple extends StatelessWidget {
  final Function onPressed;
  final Color buttonColor;
  final Color fontColor;
  final double fontSize;
  final String title;

  const SignInWithApple(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 12.0),
      onPressed: onPressed,
      color: buttonColor ?? Color(0xFF333333),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.apple,
            color: fontColor ?? Colors.white,
            size: fontSize,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            title ?? 'Sign in with Apple',
            style: TextStyle(
              color: fontColor ?? Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class SignInWithMicrosoft extends StatelessWidget {
  final Function onPressed;
  final Color buttonColor;
  final Color fontColor;
  final double fontSize;
  final String title;

  const SignInWithMicrosoft(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.fontColor,
      this.title,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      onPressed: onPressed,
      color: buttonColor ?? Color(0xFFF0EFE7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.microsoft,
            color: fontColor ?? Colors.black,
            size: fontSize,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            title ?? 'Sign in with Microsoft',
            style: TextStyle(
              color: fontColor ?? Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
// *******************************************************Sign In Buttons  ************************************************************

// *******************************************************Social Buttons *****************************************
class FacebookButton extends StatelessWidget {
  final Function onPressed;
  final Color buttonColor;
  final Color iconColor;
  final double iconSize;
   final bool isMinSize;
  const FacebookButton(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.iconColor,
      this.iconSize, this.isMinSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      splashColor: Colors.white,
      mini: isMinSize ?? true,
      onPressed: onPressed,
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
  final Color buttonColor;
  final Color iconColor;
  final double iconSize;
   final bool isMinSize;
  const TwitterButton(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.iconColor,
      this.iconSize, this.isMinSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      splashColor: Colors.white,
      mini: isMinSize ?? true,
      onPressed: onPressed,
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
  final Color buttonColor;
  final Color iconColor;
  final double iconSize;
   final bool isMinSize;
  const GoogleButton(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.iconColor,
      this.iconSize, this.isMinSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      splashColor: Colors.white,
      mini: isMinSize ?? true,
      onPressed: onPressed,
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
  final Color buttonColor;
  final Color iconColor;
  final double iconSize;
   final bool isMinSize;
  const MicrosoftButton(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.iconColor,
      this.iconSize, this.isMinSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      splashColor: Colors.black,
      mini: isMinSize ?? true,
      onPressed: onPressed,
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
  final Color buttonColor;
  final Color iconColor;
  final double iconSize;
   final bool isMinSize;
  const InstagramButton(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.iconColor,
      this.iconSize, this.isMinSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      splashColor: Colors.white,
      mini: isMinSize ?? true,
      onPressed: onPressed,
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
  final Color buttonColor;
  final Color iconColor;
  final double iconSize;
   final bool isMinSize;
  const LinkedinButton(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.iconColor,
      this.iconSize, this.isMinSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      splashColor: Colors.white,
      mini: isMinSize ?? true,
      onPressed: onPressed,
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
  final Color buttonColor;
  final Color iconColor;
  final double iconSize;
   final bool isMinSize;
  const PinterestButton(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.iconColor,
      this.iconSize, this.isMinSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      splashColor: Colors.white,
      mini: isMinSize ?? true,
      onPressed: onPressed,
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
  final Color buttonColor;
  final Color iconColor;
  final double iconSize;
   final bool isMinSize;
  const GithubButton(
      {Key key,
      @required this.onPressed,
      this.buttonColor,
      this.iconColor,
      this.iconSize, this.isMinSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      splashColor: Colors.white,
      mini: isMinSize ?? true,
      onPressed: onPressed,
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
  final double radius;
  final Color splashColor;
  final Color textColor;
  final Color buttonColor;
  final String title;
  final Function onPressed;
  final List<Color> colors;

  const GredientButton(
      {Key key,
      this.radius,
      this.splashColor,
      this.textColor,
      this.buttonColor,
      @required this.title,
      @required this.onPressed,@required this.colors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius ?? 6),
      onTap: onPressed,
      splashColor: splashColor ?? Colors.blue,
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 6),
            gradient: LinearGradient(colors: colors),
            color: buttonColor ?? Colors.blue,
            
            boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.08))],),
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