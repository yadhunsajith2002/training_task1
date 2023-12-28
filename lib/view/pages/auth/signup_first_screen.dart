// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:training_task1/utils/color_const/color_constants.dart';
import 'package:training_task1/view/widgets/customSignUpAppbar.dart';
import 'package:training_task1/view/widgets/custom_button.dart';
import 'package:training_task1/view/widgets/custom_text.dart';
import 'package:training_task1/view/widgets/custom_textfield.dart';

class SignUpFirstScreen extends StatelessWidget {
  const SignUpFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var sizedBox = SizedBox(
      height: 10,
    );
    var textScale = MediaQuery.of(context).textScaleFactor;

    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: customGreen,
      appBar: SignUpAppBarWidget(
        size: size,
        textScale: textScale,
        title: "Sign Up",
        subTitle: " Create new account",
        context: context,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height * 0.9,
          width: size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Name",
                  textScale: textScale,
                ),
                sizedBox,
                CustomTextField(hintText: "Enter Name"),
                sizedBox,
                CustomText(text: "Phone Number", textScale: textScale),
                sizedBox,
                CustomTextField(hintText: "Enter Phone Number"),
                sizedBox,
                CustomText(text: "Email", textScale: textScale),
                sizedBox,
                CustomTextField(hintText: "Enter Phone Email"),
                sizedBox,
                CustomText(text: "Date of Birth", textScale: textScale),
                sizedBox,
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.4,
                      child: CustomTextField(
                        hintText: "00/00/00/",
                        suffixIcon: Icon(
                          Icons.calendar_month_outlined,
                          color: customGreen,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: "Gender", textScale: textScale),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 30, right: 20),
                              decoration: BoxDecoration(
                                  color: customGreen,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  )),
                              child: Text(
                                "Male",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 30, right: 20),
                              decoration: BoxDecoration(
                                  color: customGrey,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5))),
                              child: Text(
                                'Female',
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                sizedBox,
                CustomText(text: "City", textScale: textScale),
                sizedBox,
                CustomTextField(hintText: "Enter Your City Name"),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, "signupsecondscreen");
                  },
                  textColor: Colors.white,
                  textScale: textScale,
                  text: "Next",
                  bgcolor: customGreen,
                ),
                sizedBox,
                CustomButton(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    textColor: customGreen,
                    textScale: textScale,
                    text: "Back",
                    bgcolor: customGrey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
