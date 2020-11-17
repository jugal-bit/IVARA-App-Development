import 'package:flutter/material.dart';
import 'package:ivara_app/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "IVARA APP",
      theme: ThemeData(
        primaryColor: primarycolor,
      ),
      home:  HomePage(),
    );
  }
  
}


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
      child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/IVENTORS_INITIATIVES.png"),
            ),
          )
          ),
          ),
          Expanded(
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                     //     TextSpan(
                         //   text: "WELCOME\n",
                     //       style: Theme.of(context).textTheme.headline2.copyWith(fontWeight: FontWeight.bold),
                    //      ),
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
          )
        ],
      ) ,
    );

  }
  
}