import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'introPage.dart';
import 'student_app/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      body:SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new IntroPage(),
      photoSize: height/6,
      image: Image.asset("assets/logo_small.png"),
      backgroundColor: Colors.white,
      loaderColor: Colors.yellow,
      ),
    );
  }
}
//Center(child: ,)