import 'package:flutter/material.dart';
import 'package:training_task1/utils/color_const/color_constants.dart';
import 'package:training_task1/view/pages/request_accept_screen/request_accept_screen.dart';

class CustumRequestButton extends StatelessWidget {
  const CustumRequestButton({
    super.key,
    required this.height,
    required this.width,
  });
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return RequestAcceptScreen();
              },
            ));
          },
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: customGreen, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Text(
                "Accept",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text(
              "Ignore",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
