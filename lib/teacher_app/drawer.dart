import 'package:flutter/material.dart';
import 'package:ivara_app_development/student_app/sidebar/faq.dart';
import 'package:ivara_app_development/teacher_app/attendance.dart';
import 'package:ivara_app_development/teacher_app/chatScreen.dart';
import 'package:ivara_app_development/teacher_app/faqs.dart';
import 'package:ivara_app_development/teacher_app/referralScreen.dart';

import 'constants.dart';
import 'mainFrame.dart';
class TeacherDrawer{
  Widget getDrawer(context){
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Padding(
                  padding: EdgeInsets.only(top: height * 0.16),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MainFrame(0)));
                    },
                    child: Text('Home')),
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFFEE715),
                ),
              ),
              ListTile(
                title: Text('Chat with us'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
                },
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text('Attendance'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Attendance()));
                },
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text('About IVentors'),
                onTap: () {},
              ),
              Divider(
                  color: Colors.black,
                ),
              ListTile(
                title: Text('My Profile'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainFrame(3)));
                },
              ),
              Divider(
                  color: Colors.black,
                ),
              ListTile(
                title: Text('My Referrals'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Referral()));
                },
              ),
              Divider(
                  color: Colors.black,
                ),
              ListTile(
                title: Text('FAQs'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Faqs()));
                },
              ),
              Divider(
                  color: Colors.black,
                ),
              ListTile(
                title: Text('Logout'),
                onTap: () {},
              ),
            ],
          ),
        );
  }
}