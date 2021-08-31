import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/circleButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {

  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;

  const StoryCard({Key? key, 
  required this.labelText, 
  required this.story, 
  required this.avatar, 
  this.createStoryStatus =false, 
  this.displayBorder = false, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: createStoryStatus ? CircleButton(
              buttonAction: () {},
              buttonIcon: Icons.add,
              iconColor: Colors.blue,
            ):Avatar(displayImage: avatar, displayStatus: false,displayBorder: displayBorder)
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              // ignore: unnecessary_null_comparison
              labelText != null ? labelText : "N/A",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
