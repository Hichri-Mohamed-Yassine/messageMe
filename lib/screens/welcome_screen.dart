import 'package:flutter/material.dart';
import 'package:messageme_app/screens/registration_screen.dart';
import 'package:messageme_app/screens/signin_screen.dart';
import 'package:messageme_app/widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = "welcome_screen";
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset("images/logo.png"),
                ),
                const Text(
                  "MessageMe",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e356b),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            MyButton(
              color: Colors.yellow[900]!,
              title: "Sign In",
              onPressed: () {
                Navigator.pushNamed(context, SigninScreen.signinRoute);
              },
            ),
            MyButton(
              color: Colors.blue[800]!,
              title: "Register",
              onPressed: () {
                Navigator.pushNamed(
                    context, RegistrationScreen.registrationRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
