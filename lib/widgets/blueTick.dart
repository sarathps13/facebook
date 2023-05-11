import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BlueTick extends StatelessWidget {
  const BlueTick({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration:
          const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
      child: const Icon(
        Icons.check,
        color: Colors.white,
        size: 10,
      ),
    );
  }
}
