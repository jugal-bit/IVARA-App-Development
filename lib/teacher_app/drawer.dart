import 'package:flutter/material.dart';

import 'constants.dart';

class TeacherDrawer{
  Widget getDrawer(){
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Padding(
                  padding: EdgeInsets.only(top: height * 0.16),
                  child: Text('Home'),
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFFEE715),
                ),
              ),
              ListTile(
                title: Text('Chat with us'),
                onTap: () {},
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
                onTap: () {},
              ),
              Divider(
                  color: Colors.black,
                ),
              ListTile(
                title: Text('My Referrals'),
                onTap: () {},
              ),
              Divider(
                  color: Colors.black,
                ),
              ListTile(
                title: Text('FAQs'),
                onTap: () {},
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