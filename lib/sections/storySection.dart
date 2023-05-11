import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          StoryCard(
            labelText: 'Add To Story',
            avatar: 'assets/avatar/ramansir.png',
            story: 'assets/avatar/ramansir.png',
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: 'Kalabhavan Mani',
            story: 'assets/post/whatsur.jpg',
            avatar: 'assets/avatar/mani.jpg',
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Aju",
            story: 'assets/post/screen.jpg',
            avatar: 'assets/avatar/aju.jpg',
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Shine Tom',
            story: "assets/post/soopra.png",
            avatar: 'assets/avatar/shine2.jpg',
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Jagadhi',
            story: 'assets/post/mohanlal.png',
            avatar: 'assets/avatar/jagadhi.jpg',
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Ramu Sir',
            story: 'assets/post/bhudhi.png',
            avatar: 'assets/avatar/like.jpg',
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Suraj Boss',
            story: 'assets/post/fb.jpg',
            avatar: 'assets/avatar/suraj.png',
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
