import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          createRoom(),
          Avatar(
              displayImage: 'assets/avatar/ramansir.png', displayStatus: true),
          Avatar(
              displayImage: 'assets/avatar/jagadhi.jpg', displayStatus: true),
          Avatar(displayImage: 'assets/avatar/mani.jpg', displayStatus: true),
          Avatar(displayImage: 'assets/avatar/aju.jpg', displayStatus: true),
          Avatar(displayImage: 'assets/avatar/suraj.png', displayStatus: true),
          Avatar(displayImage: 'assets/avatar/like.jpg', displayStatus: true),
          Avatar(displayImage: 'assets/avatar/shine2.jpg', displayStatus: true),
        ],
      ),
    );
  }

  Widget createRoom() {
    return Container(
      padding: const EdgeInsets.only(
        right: 5,
      ),
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: const Text(
          'Create \n Room',
          style: TextStyle(color: Color.fromRGBO(33, 150, 243, 1)),
        ),
        style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(),
          side: const BorderSide(color: Colors.blue, width: 2),
        ),
      ),
    );
  }
}
