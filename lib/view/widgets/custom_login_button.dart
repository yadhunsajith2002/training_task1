import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Color backgroundColor;
  final Color? iconColor;
  final String icon;

  final String text;
  final void Function() onPressed;
  const LoginButton({
    super.key,
    required this.icon,
    required this.text,
    required this.backgroundColor,
    this.iconColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStatePropertyAll(
                EdgeInsets.only(left: 15, top: 8, bottom: 8)),
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
            backgroundColor: MaterialStatePropertyAll(backgroundColor)),
        onPressed: onPressed,
        child: Row(
          children: [
            SizedBox(
              width: 30,
              child: Image.asset(color: iconColor, fit: BoxFit.cover, icon),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
