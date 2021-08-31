import 'package:flutter/material.dart';
import 'package:fresh_to_home/HOME_COMPONENT/home_componet.dart';

class Testing extends StatefulWidget {
  const Testing({ Key? key }) : super(key: key);

  @override
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TopProduct(),
      ),
    );
  }
}