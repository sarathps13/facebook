import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  CircularButton(
      {required this.buttonIcon,
      required this.buttonAction,
      this.iconColor = Colors.black});

  IconData buttonIcon;
  void Function() buttonAction;
  final Color iconColor;
  //icon and button called as named parameter
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration:
          BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: iconColor,
          size: 24,
        ),
      ),
    );
  }
}
