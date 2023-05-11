import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SuggestionCard extends StatelessWidget {
  SuggestionCard(
      {required this.avatar,
      required this.name,
      required this.mutualFriends,
      required this.addFriend,
      required this.removeFriend});
  final String avatar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggetsionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(
                color: const Color.fromARGB(255, 245, 239, 239), width: 1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Text(name != null ? name : ''),
              subtitle: Text(mutualFriends != null ? mutualFriends : " "),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(addFriend, Icons.account_box, Colors.blue,
                      Colors.white, Colors.white, 'Add Friend'),
                  blankButton(
                      buttonAction: removeFriend,
                      buttonText: 'Remove',
                      buttonColor: Color.fromARGB(255, 200, 199, 199),
                      buttonTextColor: Colors.black)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget blankButton({
    required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
  }) {
    return ElevatedButton(
        onPressed: buttonAction,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
        child: Text(
          buttonText,
          style: TextStyle(color: buttonTextColor),
        ));
  }

  Widget iconButton(
      void Function() buttonAction,
      IconData buttonIcon,
      Color buttonColor,
      Color buttonIconColor,
      Color buttonTextColor,
      String buttonText) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget suggetsionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: avatar != null
              ? Image.asset(
                  avatar,
                  height: 250,
                  fit: BoxFit.cover,
                )
              : SizedBox()),
    );
  }
}
