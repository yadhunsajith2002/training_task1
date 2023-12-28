// ignore_for_file: deprecated_member_use

import 'package:fbsocial/utils/color_const/color_constants.dart';
import 'package:fbsocial/widgets/customSignUpAppbar.dart';
import 'package:fbsocial/widgets/custom_text.dart';
import 'package:fbsocial/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom_button.dart';

class RegisterFormLastPage extends StatelessWidget {
  const RegisterFormLastPage({super.key});

  @override
  Widget build(BuildContext context) {
    var ksizedBox = SizedBox(
      height: 10,
    );
    var size = MediaQuery.of(context).size;
    var textScale = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: customGreen,
      appBar: SignUpAppBarWidget(
        size: size,
        textScale: textScale,
        title: "Register Form",
        subTitle: "Driver Experience Profile",
        context: context,
      ),
      body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(15),
              height: size.height * 0.81,
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(18))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Penalty And Fine If Any",
                      style: TextStyle(color: customGreen),
                    ),
                    ksizedBox,
                    CustomText(text: "Reason", textScale: textScale),
                    ksizedBox,
                    CustomTextField(
                      hintText: "Enter",
                      maxLines: 3,
                    ),
                    ksizedBox,
                    CustomText(text: "Date", textScale: textScale),
                    ksizedBox,
                    CustomTextField(
                      hintText: "00/00/00",
                      suffixIcon: Icon(
                        Icons.calendar_month,
                        color: customGreen,
                      ),
                    ),
                    ksizedBox,
                    CustomText(text: "Amount", textScale: textScale),
                    ksizedBox,
                    CustomTextField(hintText: "Enter Amount"),
                    SizedBox(
                      height: size.height * 0.2,
                    ),
                    CustomButton(
                        onTap: () {},
                        textScale: textScale,
                        text: 'Complete Registration',
                        bgcolor: customGreen,
                        textColor: Colors.white)
                  ]))),
    );
  }
}
