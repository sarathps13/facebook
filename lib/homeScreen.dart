import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'widgets/circularButton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[400],
    );
    Widget thickDivider = Divider(
      thickness: 8,
      color: Colors.grey[400],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [
            CircularButton(buttonIcon: Icons.search, buttonAction: () {}),
            CircularButton(buttonIcon: Icons.chat, buttonAction: () {}),
          ],
        ),
        body: ListView(
          children: [
            const StatusSection(),
            thinDivider,
            HeaderSection(
              buttonOne: headerButton(
                  actionButton: () {},
                  colorButton: Colors.red,
                  iconButton: Icons.video_call,
                  textBUtton: "Live"),
              buttonTwo: headerButton(
                  actionButton: () {},
                  colorButton: Colors.green,
                  iconButton: Icons.photo_library,
                  textBUtton: 'Photo'),
              buttonThree: headerButton(
                  actionButton: () {},
                  colorButton: Colors.purple,
                  iconButton: Icons.video_call,
                  textBUtton: 'Room'),
            ),
            thickDivider,
            const RoomSection(),
            thickDivider,
            const StorySection(),
            thickDivider,
            const PostCard(
              avatar: 'assets/avatar/jagadhi.jpg',
              name: 'Jagadhish',
              publishedAt: '5hrs',
              postTitle: 'Happy Diwali !!',
              postImage: 'assets/post/diwali.jpg',
              showBlueTick: true,
              likeCount: '10k',
              shareCount: '1k',
              commentCount: '1k',
            ),
            thickDivider,
            const PostCard(
              avatar: 'assets/avatar/shine2.jpg',
              name: 'Shine Tom',
              publishedAt: '2 days ago',
              postTitle: '',
              postImage: 'assets/post/soopra.png',
              showBlueTick: true,
              likeCount: '25k',
              shareCount: '5k',
              commentCount: '8k',
            ),
            thickDivider,
            const SuggestionSection(),
            thickDivider,
            const PostCard(
              avatar: 'assets/avatar/like.jpg',
              name: 'Samuel ',
              publishedAt: 'feb 10',
              postTitle:
                  '''Passan's 2023 MLB season preview: Bold predictions and breakout stars for all 30 teams''',
              postImage: 'assets/post/sports.png',
              showBlueTick: false,
              likeCount: '20k',
              shareCount: '1k',
              commentCount: '2k',
            ),
          ],
        ),
      ),
    );
  }
}
