import 'package:flutter/material.dart';

class Teacherlistp extends StatefulWidget{
  @override

  _TeacherlistpState  createState() => _TeacherlistpState();

}

class _TeacherlistpState extends State<Teacherlistp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Teacher List"),
      ),
      body: new Center(
        child: new Text("This is Teacher list"),
      ),
    );
  }

}