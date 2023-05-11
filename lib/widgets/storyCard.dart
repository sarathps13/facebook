import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard(
      {required this.labelText,
      required this.story,
      required this.avatar,
      this.createStoryStatus = false,
      this.displayBorder = false});
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 5, top: 10, bottom: 10, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 5,
              child: createStoryStatus
                  ? CircularButton(
                      buttonIcon: Icons.add,
                      buttonAction: () {},
                      iconColor: Colors.blue,
                    )
                  : Avatar(
                      displayImage: avatar,
                      displayStatus: false,
                      displayBorder: displayBorder,
                      width: 35,
                      height: 35,
                    )),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != null ? labelText : 'N/A',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
