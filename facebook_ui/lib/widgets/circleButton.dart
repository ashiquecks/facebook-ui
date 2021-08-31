import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;

  const CircleButton({Key? key, required this.buttonIcon, required this.buttonAction, this.iconColor =Colors.black,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
      margin: EdgeInsets.all(5),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          size: 25,
          color: iconColor,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
