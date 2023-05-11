import 'package:flutter/material.dart';

Widget headerButton(
    {required String textBUtton,
    required IconData iconButton,
    required void Function() actionButton,
    required Color colorButton}) {
  return TextButton.icon(
    onPressed: () {},
    icon: Icon(
      iconButton,
      color: colorButton,
    ),
    label: Text(
      textBUtton,
      style: const TextStyle(color: Colors.black),
    ),
  );
}
