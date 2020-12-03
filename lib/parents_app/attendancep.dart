import 'package:flutter/material.dart';

class Attendancep extends StatefulWidget{
  @override

  _AttendancepState  createState() => _AttendancepState();

}

class _AttendancepState extends State<Attendancep> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Attendance"),
      ),
      body: new Center(
        child: new Text("This is Attendance list"),
      ),
    );
  }

}