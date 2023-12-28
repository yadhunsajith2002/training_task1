// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double textScale;
  const CustomText({
    super.key,
    required this.text,
    required this.textScale,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textScaleFactor: textScale,
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: textScale * 17),
    );
  }
}
