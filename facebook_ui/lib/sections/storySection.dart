import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            avatar: dulqer,
            labelText: 'Add to Story',
            story: dulqer,
            createStoryStatus: true,
            displayBorder: true,
          ),
           StoryCard(
            avatar: mohanlal,
            labelText: 'Mohanlal',
            story: diwaliOne,
            displayBorder: true,
          ),
           StoryCard(
            avatar: mammotty,
            labelText: 'Mammotty',
            story: child,
            displayBorder: true,
          ),
           StoryCard(
            avatar: fahad,
            labelText: 'Fahad',
            story: diwaliTwo,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
