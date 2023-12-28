// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:training_task1/utils/color_const/color_constants.dart';
import 'package:training_task1/view/widgets/customSignUpAppbar.dart';
import 'package:training_task1/view/widgets/custom_button.dart';
import 'package:training_task1/view/widgets/custom_text.dart';
import 'package:training_task1/view/widgets/custom_textfield.dart';

class SignUpSecondScreen extends StatelessWidget {
  const SignUpSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textScale = MediaQuery.of(context).textScaleFactor;
    var ksizedBox = SizedBox(
      height: 8,
    );
    return Scaffold(
      backgroundColor: customGreen,
      appBar: SignUpAppBarWidget(
        size: size,
        textScale: textScale,
        title: "Sign Up",
        subTitle: "Personal Details",
        context: context,
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(18),
          height: size.height * 0.82,
          width: size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "License Number", textScale: textScale),
              ksizedBox,
              CustomTextField(
                hintText: "Enter number",
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: attachFileWidget(onTap: () {}, size: size),
                ),
              ),
              ksizedBox,
              CustomText(text: "Expire Date", textScale: textScale),
              ksizedBox,
              CustomTextField(
                hintText: "00/00/00",
                suffixIcon: Icon(
                  Icons.calendar_month,
                  color: customGreen,
                ),
              ),
              ksizedBox,
              CustomText(text: "EID Document", textScale: textScale),
              ksizedBox,
              CustomTextField(
                hintText: "Document",
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: attachFileWidget(onTap: () {}, size: size),
                ),
              ),
              ksizedBox,
              CustomText(text: "Expire Date", textScale: textScale),
              ksizedBox,
              CustomTextField(
                hintText: "Document",
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: attachFileWidget(onTap: () {}, size: size),
                ),
              ),
              Spacer(),
              CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, "registerformscreen");
                  },
                  textScale: textScale,
                  text: "Next",
                  bgcolor: customGreen,
                  textColor: Colors.white),
              ksizedBox,
              CustomButton(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  textScale: textScale,
                  text: "Back",
                  bgcolor: customGrey,
                  textColor: customGreen)
            ],
          ),
        ),
      ),
    );
  }
}

class attachFileWidget extends StatelessWidget {
  final void Function()? onTap;
  const attachFileWidget({
    super.key,
    required this.size,
    required this.onTap,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      child: Container(
        width: size.width * 0.2,
        decoration: BoxDecoration(
            color: customGreen, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.rotate(
              angle: 1,
              child: Icon(
                size: 18,
                Icons.attach_file_outlined,
                color: Colors.white,
              ),
            ),
            Text(
              "Attach",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
