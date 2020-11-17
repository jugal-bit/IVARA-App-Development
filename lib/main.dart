import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ivara_app/constant.dart';
import 'package:ivara_app/hometps.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => HomePage();

}

class HomePage extends State<MyApp>{

  @override
  void initState() {
    var d = Duration(seconds: 5);

    Future.delayed(d,() {
      Navigator.pushAndRemoveUntil(context,  MaterialPageRoute(builder: (context){
        return Homescreen();
      },
      ),
            (route) => false,
      );
    });
    // TODO: implement initState
    super.initState();


  }




  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/IVENTORS_INITIATIVES.png"),
                  ),
                )
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "WELCOME\n\n",
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                          )
                      ),
                      TextSpan(
                        text: "India's First Offline 3D & Interactive Learning through AR",
                        style: TextStyle(
                          fontSize: 14,

                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                Padding(padding: EdgeInsets.only(top: 20.0),
                ),
                Text("Loading",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold)),
              ],
            ),)
        ],
      ) ,
      ),
    );


  }

   /* loaddata() async{
    var duration = new Duration(seconds: 5);
    return new Timer(duration,route);
  }

  route() async{
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen()));

  } */

}

