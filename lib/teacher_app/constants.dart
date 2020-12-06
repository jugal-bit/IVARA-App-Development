
import 'package:flutter/material.dart';
double height, width;
TextStyle headingstyle = TextStyle(fontSize: height * 0.04, fontWeight: FontWeight.w600);
EdgeInsets textFieldPadding=EdgeInsets.symmetric(vertical: height * 0.015, horizontal: width * 0.08);
EdgeInsets textFieldPadding2=EdgeInsets.symmetric(vertical: height * 0.01, horizontal: width * 0.08);
Color yellow=Color(0xFFffff4e);
Color yellowDefault=Color(0xFFFEE715);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Color(0xFFFEE715), width: 2.0),
  ),
);
const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);
const kInputDecoration=InputDecoration(
                  hintText: 'Enter a value',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                );

const kSendButtonTextStyle = TextStyle(
  color: Color(0xFFFEE715),
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

var heading = [
  "How can I pay for my ride?",
  "How can I select my starting point and destination?",
  "How can I track my bus?",
  "When can I use Emergency button?",
  "How can I use Share Location?",
];
var message = [];
