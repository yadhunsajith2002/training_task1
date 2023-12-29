// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:training_task1/utils/color_const/color_constants.dart';
import 'package:training_task1/view/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textscale = MediaQuery.of(context).textScaleFactor;
    var ksizedBox = SizedBox(
      height: 15,
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: customGreen,
              child: CircleAvatar(
                radius: 38,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 36,
                  backgroundColor: customGreen,
                  child: Text(
                    textScaleFactor: textscale,
                    "K",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 6, 56, 97),
                        fontWeight: FontWeight.bold,
                        fontSize: textscale * 50),
                  ),
                ),
              ),
            ),
            ksizedBox,
            Image.asset("assets/png/Group 3037@2x.png"),
            ksizedBox,
            Text(
              textScaleFactor: textscale,
              "Welcome to Karak,",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: textscale * 30),
            ),
            ksizedBox,
            Text(
              textScaleFactor: textscale,
              "Ride together,arrive together! Welcome to our carpool community,where every journey is a shared adventure.",
              style: TextStyle(color: Colors.black45, fontSize: textscale * 20),
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, "signinscreen");
                },
                textScale: textscale,
                text: "Sign In",
                bgcolor: customGreen,
                textColor: Colors.white),
            ksizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "signupfirstscreen");
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.green[500],
                          decoration: TextDecoration.underline),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
