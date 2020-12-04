import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: Column(
            children: <Widget>[
              
              Padding(
                padding: EdgeInsets.all(1),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 15, 10, 1),
                      child: Container(
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 6.0,
                                spreadRadius: 1.0,
                                offset: Offset(
                                  15.0,
                                  15.0,
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/icons/illustartion2.png",
                              height: 120,
                              ),
                          ),
                              Padding(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  "Class 7",
                                  style: TextStyle(fontSize: 20),
                                ),
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 1, 1),
                      child: Container(
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 6.0,
                                spreadRadius: 1.0,
                                offset: Offset(
                                  15.0,
                                  15.0,
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/icons/illustartion3.png",
                              height: 120,
                              ),
                          ),
                              Padding(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  "Class 8",
                                  style: TextStyle(fontSize: 20),
                                ),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(1, 30, 10, 30),
                  child: Container(
                      width: 270,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 6.0,
                            spreadRadius: 1.0,
                            offset: Offset(
                              15.0,
                              15.0,
                            ),
                          )
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(4),
                            child: Image.asset(
                              "assets/icons/illustartion4.png",
                              height: 150,
                              ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              "Test Series",
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
