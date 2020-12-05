import 'package:flutter/material.dart';
import './subject1p.dart';
import './subject2p.dart';
import './subject3p.dart';
import './subject4p.dart';
import './subject5p.dart';

class Attendancep extends StatefulWidget{
  @override

  _AttendancepState  createState() => _AttendancepState();

}

class _AttendancepState extends State<Attendancep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50,0 ,50),
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Attendance', style: TextStyle(color: Colors.white,fontSize: 50.0,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),
          Expanded(child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                 // colors: [ Color.fromRGBO(0, 0, 0, 0.0),Colors.white,]
                  colors: [Color(0xFFFFFFFF),Colors.white]
              ),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                padding: const EdgeInsets.fromLTRB(20,20,20,0),
                child: Container(
                  height: 85.0,
                  child: new SizedBox(
                    width: 320.0,

                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>subject1p()));
                      },
                      color: Colors.white,
                      child: Text(
                        'Biology',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40.0,
                            letterSpacing: 1),
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black12, width: 2),
                        borderRadius: new BorderRadius.circular(15.0),
                      ),
                      padding: const EdgeInsets.all(8.0),

                    ),
                  ), // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.amberAccent)),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,20,0),
                  child: Container(
                    height: 85.0,
                    child: new SizedBox(
                      width: 320.0,

                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>subject2p()));
                        },
                        color: Colors.white,
                        child: Text(
                          'Physics',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.0,
                              letterSpacing: 1),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black12, width: 2),
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.all(8.0),

                      ),
                    ), // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.amberAccent)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,20,0),
                  child: Container(
                    height: 85.0,
                    child: new SizedBox(
                      width: 320.0,

                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>subject3p()));
                        },
                        color: Colors.white,
                        child: Text(
                          'Chemistry',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.0,
                              letterSpacing: 1),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black12, width: 2),
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.all(8.0),

                      ),
                    ), // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.amberAccent)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,20,0),
                  child: Container(
                    height: 85.0,
                    child: new SizedBox(
                      width: 320.0,

                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>subject4p()));
                        },
                        color: Colors.white,
                        child: Text(
                          'History',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.0,
                              letterSpacing: 1),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black12, width: 2),
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.all(8.0),

                      ),
                    ), // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.amberAccent)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,20,0),
                  child: Container(
                    height: 85.0,
                    child: new SizedBox(
                      width: 320.0,

                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>subject5p()));
                        },
                        color: Colors.white,
                        child: Text(
                          'Geography',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.0,
                              letterSpacing: 1),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black12, width: 2),
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.all(8.0),

                      ),
                    ), // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.amberAccent)),
                  ),
                ),
              ],
            ),
          ),
          ),
        ],
      ),
    );
  }
  }

