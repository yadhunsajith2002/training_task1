import 'package:flutter/material.dart';
import 'package:training_task1/utils/color_const/color_constants.dart';
import 'package:training_task1/view/widgets/customSignUpAppbar.dart';
import 'package:training_task1/view/widgets/custom_button.dart';
import 'package:training_task1/view/widgets/custom_text.dart';
import 'package:training_task1/view/widgets/custom_textfield.dart';

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
                        onTap: () {
                          Navigator.of(context).pushNamed("screenhome");
                        },
                        textScale: textScale,
                        text: 'Complete Registration',
                        bgcolor: customGreen,
                        textColor: Colors.white)
                  ]))),
    );
  }
}
