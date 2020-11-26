import 'package:flutter/material.dart';

class Profilep extends StatefulWidget{
  @override

  _ProfilepState  createState() => _ProfilepState();

}

class _ProfilepState extends State<Profilep> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Profile"),
      ),
      body: new Center(
        child: new Text("This is Profile"),
      ),
    );
  }

}