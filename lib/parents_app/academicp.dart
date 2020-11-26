import 'package:flutter/material.dart';

class Academicp extends StatefulWidget{
  @override

  _AcademicpState  createState() => _AcademicpState();

}

class _AcademicpState extends State<Academicp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Academic"),
      ),
      body: new Center(
        child: new Text("This is Academic list"),
      ),
    );
  }

}