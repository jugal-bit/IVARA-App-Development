import 'package:flutter/material.dart';
import 'classes.dart';
import 'mentors.dart';

class BottomNavigation {
  Widget getBottomNavigationbar(context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => ClassPage()));
            },
            child: Icon(Icons.home, color: Colors.white),
          ),
          title: Text('IVentors', style: TextStyle(color: Colors.white)),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business, color: Colors.white),
          title: Text('Tests', style: TextStyle(color: Colors.white)),
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(onTap:(){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Mentors()));
          },child: Icon(Icons.school, color: Colors.white)),
          title: Text('Mentor', style: TextStyle(color: Colors.white)),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.white),
          title: Text('Profile', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
