import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection(
      {required this.buttonOne,
      required this.buttonTwo,
      required this.buttonThree});

  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[400],
          ),
          buttonTwo,
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[400],
          ),
          buttonThree,
        ],
      ),
    );
  }
}
