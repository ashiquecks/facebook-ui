import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fresh_to_home/testing.dart';


import 'HOME_COMPONENT/home_componet.dart';

//======================================== ROOT ============================================\\

void main() {
  runApp(Testing());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

//========================================SPLASH SCREEN SECTION ============================================\\

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/images/main_logo.jpg",
          height: 150,
          width: 160,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

//========================================HOME PAGE SECTION ============================================\\

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBarBuilder(),
        body: ListView(    
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: [
            SliderSection(),
            MessageBoxSection(),
            TopProduct(),
            SizedBox(height:15),
            TodaySpecial(),
            Divider(thickness: 10,color: Colors.grey[200]),
            // category page pending
            BannerListviewSection(),
            

          ],
        ),
      ),
    );
  }

//======================================== APPBAR METHOD ============================================\\
  AppBar appBarBuilder() {
    return AppBar(
      backgroundColor: Colors.green,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      title: Column(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(text: "Kerala"),
              WidgetSpan(
                child: Icon(Icons.arrow_drop_down),
              ),
            ]),
          ),
          Text(
            "673506 | all",
            style: TextStyle(color: Colors.white, fontSize: 12),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 25,
          ),
        ),
      ],
    );
  }
}
