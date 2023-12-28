// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:training_task1/utils/color_const/color_constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final double? height;
  final int? maxLines;

  final Widget? suffixIcon;
  CustomTextField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.height,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            fillColor: customGrey,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(6))),
      ),
    );
  }
}
