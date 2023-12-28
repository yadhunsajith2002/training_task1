import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function() onTap;
  final Color bgcolor;
  final String text;
  final Color textColor;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.textScale,
    required this.text,
    required this.bgcolor,
    required this.textColor,
  });

  final double textScale;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 6),
        child: Center(
            child: Text(
          // ignore: deprecated_member_use
          textScaleFactor: textScale,
          text,
          style: TextStyle(color: textColor, fontSize: textScale * 20),
        )),
        decoration: BoxDecoration(
            color: bgcolor, borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
