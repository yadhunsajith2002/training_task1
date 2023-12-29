import 'package:flutter/material.dart';
import 'package:training_task1/utils/color_const/color_constants.dart';
import 'package:training_task1/view/widgets/customSignUpAppbar.dart';
import 'package:training_task1/view/widgets/custom_button.dart';
import 'package:training_task1/view/widgets/custom_text.dart';

import '../../widgets/custom_textfield.dart';

class RegisterFormScreen extends StatefulWidget {
  const RegisterFormScreen({super.key});

  @override
  State<RegisterFormScreen> createState() => _RegisterFormScreenState();
}

class _RegisterFormScreenState extends State<RegisterFormScreen> {
  String selectedTyre = 'High'; // Default value

  List<String> tyreOptions = ['High', 'Medium', 'Low']; // Dropdown options
  String selectedColor = 'Red';
  @override
  Widget build(BuildContext context) {
    List<String> colorOptions = ['Red', 'Blue', 'Green', 'Yellow', 'Purple'];
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
          subTitle: "Car Details",
          context: context,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            height: size.height * 1.2,
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(18))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: "Car Model", textScale: textScale),
                ksizedBox,
                CustomTextField(hintText: "Model"),
                ksizedBox,
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text: "Vechile Number", textScale: textScale),
                        ksizedBox,
                        SizedBox(
                            width: size.width * 0.5,
                            child: CustomTextField(hintText: "Enter Number")),
                      ],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Color", textScale: textScale),
                        ksizedBox,
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 26),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: customGrey,
                          ),
                          child: Center(
                            child: DropdownButton<String>(
                              iconSize: 45,
                              value: selectedColor,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedColor = newValue!;
                                });
                              },
                              items: colorOptions.map((String color) {
                                return DropdownMenuItem<String>(
                                  value: color,
                                  child: Center(
                                    child: Text(
                                      color,
                                      style: TextStyle(
                                        color: _getColorFromString(color),
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                              underline: Container(), // Remove the underline
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                CustomText(text: "Upload image/Video", textScale: textScale),
                ksizedBox,
                CustomTextField(
                  hintText: "upload",
                  suffixIcon: UploadButtonWidget(
                    size: size,
                    onTap: () {},
                  ),
                ),
                ksizedBox,
                CustomText(
                  text: "Car Service Details",
                  textScale: textScale,
                ),
                ksizedBox,
                CustomTextField(
                  hintText: "Enter",
                  maxLines: 2,
                ),
                CustomText(text: "Certificate", textScale: textScale),
                ksizedBox,
                Row(
                  children: [
                    Flexible(
                        flex: 6,
                        child: CustomTextField(
                            hintText: "Garage",
                            suffixIcon:
                                UploadButtonWidget(size: size, onTap: () {}))),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Container(
                        height: size.height * 0.06,
                        width: size.height * 0.06,
                        decoration: BoxDecoration(
                            color: customGrey,
                            borderRadius: BorderRadius.circular(7)),
                        child: Icon(Icons.add_circle_outline_rounded),
                      ),
                    ),
                  ],
                ),
                ksizedBox,
                CustomText(text: "Car Safety Condition", textScale: textScale),
                ksizedBox,
                Container(
                  width: size.width,
                  height: size.height * 0.32,
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color
                    border: Border.all(
                      color: Colors.lightGreenAccent, // Bordesr color
                      width: 1, // Border width
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0), // Border radius
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Column(
                          children: [
                            customRowWidget(textScale, "Tyre"),
                            ksizedBox,
                            customRowWidget(textScale, "Headlight"),
                            ksizedBox,
                            customRowWidget(textScale, "Headlight"),
                            ksizedBox,
                            customRowWidget(textScale, "Headlight"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                    onTap: () {
                      Navigator.pushNamed(context, "registerformlastscreen");
                    },
                    textScale: textScale,
                    text: "Next",
                    bgcolor: customGreen,
                    textColor: Colors.white)
              ],
            ),
          ),
        ));
  }

  Row customRowWidget(double textScale, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textScaleFactor: textScale,
          text,
          style: TextStyle(color: customGreen, fontSize: textScale * 16),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: customGrey, // Background color
            borderRadius: BorderRadius.circular(8.0), // Border radius
          ),
          child: DropdownButton<String>(
            value: selectedTyre,
            onChanged: (String? newValue) {
              setState(() {
                selectedTyre = newValue!;
              });
            },
            items: tyreOptions.map((String priority) {
              return DropdownMenuItem<String>(
                value: priority,
                child: Text(
                  priority,
                  style: TextStyle(color: Colors.black), // Text color
                ),
              );
            }).toList(),
            icon: Icon(Icons.arrow_drop_down,
                color: Colors.black), // Dropdown icon color
            underline: Container(), // Remove the underline
          ),
        ),
      ],
    );
  }

  Color _getColorFromString(String colorName) {
    switch (colorName) {
      case 'Red':
        return Colors.red;
      case 'Blue':
        return Colors.blue;
      case 'Green':
        return Colors.green;
      case 'Yellow':
        return Colors.yellow;
      case 'Purple':
        return Colors.purple;
      default:
        return Colors.black;
    }
  }
}

class UploadButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  const UploadButtonWidget({
    super.key,
    required this.size,
    required this.onTap,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: size.width * 0.28,
          decoration: BoxDecoration(
              color: customGreen, borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                size: 18,
                Icons.upload,
                color: Colors.white,
              ),
              Text(
                "Upload",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
