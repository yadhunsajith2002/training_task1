import 'package:flutter/material.dart';
import 'package:training_task1/firebasefunctions.dart';
import 'package:training_task1/utils/color_const/color_constants.dart';
import 'package:training_task1/view/widgets/customSignUpAppbar.dart';
import 'package:training_task1/view/widgets/custom_login_button.dart';
import 'package:training_task1/view/widgets/custom_textfield.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    var textScale = MediaQuery.of(context).textScaleFactor;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: customGreen,
      appBar: SignUpAppBarWidget(
        size: size,
        textScale: textScale,
        title: "SIGN IN",
        subTitle: "Hello there, Sign in to continue !",
        context: context,
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: size.height * 0.83,
          width: size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email ID",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(hintText: "Enter your Email ID"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(hintText: "Enter your Password"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password ?",
                      style: TextStyle(fontSize: 15, color: Colors.black45),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green[500])),
                      onPressed: () {},
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
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
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text("or"),
                    ),
                    Expanded(
                      child: Divider(),
                    ),
                  ],
                ),
                LoginButton(
                  onPressed: () {
                    signInWithFacebook();
                  },
                  backgroundColor: Colors.blue,
                  icon: "assets/icons/facebook.png",
                  text: "Continue with Facebook",
                ),
                SizedBox(
                  height: 15,
                ),
                LoginButton(
                  onPressed: () {},
                  backgroundColor: Colors.black,
                  iconColor: Colors.white,
                  icon: "assets/icons/apple-logo.png",
                  text: "Continue with apple",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
