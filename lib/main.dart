import 'package:fbsocial/firebase_options.dart';
import 'package:fbsocial/view/pages/auth/register_form_last_page.dart';
import 'package:fbsocial/view/pages/auth/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'view/pages/auth/register_form_screen.dart';
import 'view/pages/auth/signIn_screen.dart';
import 'view/pages/auth/signup_first_screen.dart';
import 'view/pages/auth/singup_second_screen.dart';

//https://fbauth-c0740.firebaseapp.com/__/auth/handler
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      routes: {
        "signinscreen": (context) => SigninScreen(),
        "signupfirstscreen": (context) => SignUpFirstScreen(),
        "signupsecondscreen": (context) => SignUpSecondScreen(),
        "registerformscreen": (context) => RegisterFormScreen(),
        "registerformlastscreen": (context) => RegisterFormLastPage(),
      },
    );
  }
}
