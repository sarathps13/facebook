import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard(
      {required this.avatar,
      required this.name,
      required this.publishedAt,
      required this.postTitle,
      required this.postImage,
      this.showBlueTick = false,
      required this.likeCount,
      required this.shareCount,
      required this.commentCount});
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          HeaderSection(
            buttonOne: headerButton(
              textBUtton: 'Like',
              iconButton: Icons.thumb_up,
              actionButton: () {},
              colorButton: Colors.grey,
            ),
            buttonTwo: headerButton(
                textBUtton: 'Comment',
                iconButton: Icons.message_outlined,
                actionButton: () {},
                colorButton: Colors.grey),
            buttonThree: headerButton(
                textBUtton: 'Share',
                iconButton: Icons.share_outlined,
                actionButton: () {},
                colorButton: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                const SizedBox(
                  width: 5,
                ),
                displayText(label: 'comments'),
                const SizedBox(
                  width: 5,
                ),
                displayText(label: shareCount),
                const SizedBox(
                  width: 5,
                ),
                displayText(label: 'shares'),
                const SizedBox(
                  width: 10,
                ),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? '' : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ''
        ? Container(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              postTitle == null ? '' : postTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        : SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displayStatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? '' : publishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
