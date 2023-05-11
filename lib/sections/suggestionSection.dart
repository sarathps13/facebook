import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text('People You May Know'),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                    avatar: 'assets/actors/surya.jpg',
                    name: 'Surya',
                    mutualFriends: '2 Mutual Friends',
                    addFriend: () {},
                    removeFriend: () {}),
                SuggestionCard(
                    avatar: 'assets/actors/vijay.jpg',
                    name: 'Vijay',
                    mutualFriends: '3 Mutual Friends',
                    addFriend: () {},
                    removeFriend: () {}),
                SuggestionCard(
                    avatar: 'assets/actors/vijaysethupathii.jpg',
                    name: 'Vijay Sethupathi',
                    mutualFriends: '6 Mutual Friends',
                    addFriend: () {},
                    removeFriend: () {}),
                SuggestionCard(
                    avatar: 'assets/actors/vikram.jpg',
                    name: 'Vikram',
                    mutualFriends: '4Mutual Friends',
                    addFriend: () {},
                    removeFriend: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
