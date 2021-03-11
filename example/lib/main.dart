import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var testing = "123";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Buttons"),
        ),
        body: ListView(
          children: <Widget>[
            Wrap(
              children: <Widget>[
                SuccessButton(
                  title: "Success Button",
                  onPressed: () {},
                ),
                SizedBox(
                  width: 2.0,
                ),
                DangerButton(
                  title: "Danger Button",
                  onPressed: () {},
                ),
                SizedBox(
                  width: 2.0,
                ),
                PrimaryButton(
                  title: "Primary Button",
                  onPressed: () {},
                ),
                SizedBox(
                  width: 2.0,
                ),
                WarningButton(
                  title: "Warning Button",
                  onPressed: () {},
                ),
              ],
            ),
            Wrap(
              children: <Widget>[
                DisabledButtton(
                  onPressed: () {},
                  title: "Disabled Button",
                ),
                SizedBox(
                  width: 2.0,
                ),
                DarkButtton(
                  onPressed: () {},
                  title: "Dark Button",
                ),
                ButttonWithIcon(
                  icon: Icons.local_cafe,
                  title: "Icon Button",
                  onPressed: () {},
                ),
                FloatingIconButton(
                  icon: Icons.home,
                  onPressed: () {},
                ),
                FloatingIconButton(
                  icon: Icons.home,
                  onPressed: () {},
                  buttonColor: Colors.orange,
                )
              ],
            ),
            Wrap(
              children: <Widget>[
                SizedBox(
                  width: 2,
                ),
                PrimaryLineButton(
                  onPressed: () {},
                  title: "Line Button",
                ),
                SizedBox(
                  width: 2,
                ),
                DefaultLineButton(
                  onPressed: () {},
                  title: "Default Line Button",
                ),
                SecoundaryLineButton(
                  onPressed: () {},
                  title: "Secoundary Line Button",
                ),
                InfoLineButton(
                  onPressed: () {},
                  title: "Info Line Button",
                ),
              ],
            ),
            Wrap(
              children: <Widget>[
                SuccessLineButton(
                  onPressed: () {},
                  title: "Success Line Button",
                ),
                WarningLineButton(
                  onPressed: () {},
                  title: "Warning Line Button",
                ),
                DangerLineButton(
                  onPressed: () {},
                  title: "Danger Line Button",
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  RoundedButton(
                    onPressed: () {},
                    title: "Rounded Button",
                  ),
                  RoundedButtonWithIcon(
                    onPressed: () {},
                    icon: Icons.title,
                    title: "Rounded Button With Icon",
                    buttonColor: Colors.green,
                  ),
                  RoundedButtonWithIcon(
                    onPressed: () {},
                    icon: Icons.home,
                    title: "Home",
                    buttonColor: Colors.blueGrey,
                  ),
                  InfoButtton(
                    onPressed: () {},
                    title: "Info Button",
                  ),
                ],
              ),
            ),
            Wrap(
              children: <Widget>[
                SecondaryButtton(
                  onPressed: () {},
                  title: "Secondary Button",
                ),
                FacebookButton(
                  onPressed: () {},
                ),
                TwitterButton(
                  onPressed: () {},
                ),
                GithubButton(
                  onPressed: () {},
                ),
                InstagramButton(
                  onPressed: () {},
                ),
                LinkedinButton(
                  onPressed: () {},
                ),
                MicrosoftButton(
                  onPressed: () {},
                ),
                GoogleButton(
                  onPressed: () {},
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Wrap(
                  children: <Widget>[
                    GredientButton(
                      onPressed: () {},
                      splashColor: Colors.orange,
                      colors: [
                        Colors.red,
                        Colors.orange,
                      ],
                      title: "Gredient Button",
                    ),
                    GredientButton(
                      onPressed: () {},
                      splashColor: Colors.orange,
                      colors: [
                        Colors.blue,
                        Colors.blueGrey,
                      ],
                      title: "Gredient Button",
                    ),
                    GredientButton(
                      onPressed: () {},
                      splashColor: Colors.orange,
                      colors: [
                        Color(0xFFC33764),
                        Color(0xFF1D2671),
                      ],
                      title: "Gredient Button",
                    ),
                    GredientButton(
                      onPressed: () {},
                      splashColor: Colors.orange,
                      colors: [
                        Color(0xFFF7971E),
                        Color(0xFFFFD200),
                      ],
                      title: "Gredient Button",
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: SignInWithEmail(
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: SignInWithGoogle(
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: SignInWithMicrosoft(
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: SignInWithApple(
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: SignInWithPinterest(
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: SignInWithLinkedin(
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: SignInWithFacebook(
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: SignInWithTwitter(
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: SignInWithInstagram(
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: SignInWithGithub(
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
