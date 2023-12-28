// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

AppBar SignUpAppBarWidget({
  required Size size,
  required double textScale,
  required String title,
  required String subTitle,
  required BuildContext context,
}) {
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: size.height * 0.16,
    flexibleSpace: Container(
      padding: EdgeInsets.only(left: 30, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkResponse(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          Text(
            title,
            textScaleFactor: textScale,
            style: TextStyle(
                color: Colors.white,
                fontSize: textScale * 35,
                fontWeight: FontWeight.bold),
          ),
          Text(
            subTitle,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/png/Scroll Group 5@2x.png"))),
    ),
  );
}
