
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {

  final String avatar;
  final String name;
  final String mutualFriend;
  final void Function() addFriend;
  final void Function() removeFriend;

  const SuggestionCard({Key? key, 
  required this.avatar, 
  required this.name, 
  required this.mutualFriend, 
  required this.addFriend, 
  required this.removeFriend
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetailes(),
        ],
      ),
    );
  }

  Widget suggestionDetailes() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),color: Colors.grey[200], borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),
        ),),
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Text(name !=null ? name: ""),
              subtitle: Text(mutualFriend ==null ?"" :mutualFriend),
            ),
            Container(
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    iconButton(
                        buttonAction: addFriend,
                        buttonIcon: Icons.account_box,
                        buttonColor: Colors.blue,
                        buttonTextColor: Colors.white,
                        buttonIconColor: Colors.white,
                        buttonText: "Add Friend"),
                    blankButton(
                    buttonAction: removeFriend, 
                    buttonText: "Remove", 
                    buttonColor: Colors.grey, 
                    buttonTextColor: Colors.black)
                  ],
                ))
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
    return TextButton(
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: buttonColor),
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return TextButton.icon(
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: buttonColor),
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: avatar != null ? Image.asset(
            avatar,
            height: 250,
            fit: BoxFit.cover,
          ):SizedBox()),
    );
  }
}
