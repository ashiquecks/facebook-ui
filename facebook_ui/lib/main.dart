import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/headerButtonsection.dart';
import 'package:facebook_ui/sections/roomSection.dart';
import 'package:facebook_ui/sections/statusSections.dart';
import 'package:facebook_ui/sections/storySection.dart';
import 'package:facebook_ui/sections/suggestionSection.dart';
import 'package:facebook_ui/widgets/circleButton.dart';
import 'package:facebook_ui/widgets/headerButton.dart';
import 'package:facebook_ui/widgets/postCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(thickness: 1, color: Colors.grey[300]);
    Widget thickDivider = Divider(thickness: 10, color: Colors.grey[300]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          actions: [
            CircleButton(buttonIcon: Icons.search, buttonAction: () {}),
            CircleButton(buttonIcon: Icons.chat, buttonAction: () {}),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                  buttonText: "Live",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {},
                  buttonColor: Colors.red),
              buttonTwo: headerButton(
                  buttonText: "Photo",
                  buttonIcon: Icons.photo_library,
                  buttonAction: () {},
                  buttonColor: Colors.green),
              buttonThree: headerButton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {},
                  buttonColor: Colors.purple),
              
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: mohanlal,
              name: "Mohanlal",
              publishedAt: "5h",
              postImage: diwaliOne,
              postTitle: 'Happy Diwali!!',
              showBlueTick: true,
              commentCount: '2K',
              likeCount: '20K',
              shareCount: '13K',
            ),
            thickDivider,
            PostCard(
              avatar: fahad,
              name: "Fahad Fasil",
              publishedAt: "1 day ago",
              postImage: diwaliThree,
              postTitle: '',
              showBlueTick: true,
              commentCount: '7K',
              likeCount: '10K',
              shareCount: '1.5K',
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
             PostCard(
              avatar: prithwiraj,
              name: "Prithwiraj",
              publishedAt: "10 day ago",
              postImage: benz,
              postTitle: '',
              showBlueTick: true,
              commentCount: '7K',
              likeCount: '10K',
              shareCount: '1.5K',
            ),
            thickDivider,
             PostCard(
              avatar: mammotty,
              name: "Mammotty",
              publishedAt: "3 day ago",
              postImage: childOne,
              postTitle: one,
              showBlueTick: true,
              commentCount: '7K',
              likeCount: '10K',
              shareCount: '1.5K',
            ),
            thickDivider,
            PostCard(
              avatar: fahad,
              name: "Fahad Fasil",
              publishedAt: "5h",
              postImage: diwaliTwo,
              postTitle: "happy diwali",
              showBlueTick: true,
              commentCount: '7K',
              likeCount: '10K',
              shareCount: '1.5K',
            ),
            thickDivider,
             
          ],
        ),
      ),
    );
  }
}
