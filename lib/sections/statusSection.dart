import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
          displayImage: 'assets/avatar/ramansir.png', displayStatus: false),
      title: TextFormField(
        decoration: const InputDecoration(
            hintText: 'Whats on your mind ? ',
            hintStyle: TextStyle(color: Colors.black),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none),
      ),
    );
  }
}
