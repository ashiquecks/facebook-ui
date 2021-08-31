import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayImage: dulqer, displayStatus: true),
          Avatar(displayImage: prithwiraj, displayStatus: true),
          Avatar(displayImage: mohanlal, displayStatus: true),
          Avatar(displayImage: mammotty, displayStatus: true),
          Avatar(displayImage: dulqer, displayStatus: true),
          Avatar(displayImage: prithwiraj, displayStatus: true),
          Avatar(displayImage: mohanlal, displayStatus: true),
          Avatar(displayImage: mammotty, displayStatus: true),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Padding(
      padding: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(color: Colors.blue, width: 2)),
        onPressed: () {},
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \nRoom",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
