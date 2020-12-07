import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './profilep.dart';
import './teacherslistp.dart';

import 'academicp.dart';
import 'attendancep.dart';


class Homepar extends StatefulWidget{
  @override

  _HomeparState   createState() => _HomeparState();

}


class _HomeparState extends  State<Homepar>{

  int _currentindex = 0;
  final List<Widget> _children = [
    Attendancep(),
    Academicp(),
    Teacherlistp(),
    Profilep(),
  ];

  void onTappedBar(int index)
  {
    setState(() {
      _currentindex = index;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
  //   appBar: AppBar(
   //    title: Text('Home Bar'),
  //   ),
      body: _children[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
         type: BottomNavigationBarType.fixed,
        currentIndex: _currentindex,
          iconSize: 35,
        onTap: onTappedBar,
          items: [
            BottomNavigationBarItem(
          icon: Icon(Icons.date_range),
                title: Text('Attendance'),
                backgroundColor: Colors.black
    ),
            BottomNavigationBarItem(
                icon: Icon(Icons.insert_chart),
               title: Text('Academics'),
               backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Teachers List'),
                backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
               backgroundColor: Colors.black
            ),
      ],
        selectedItemColor: Colors.yellow,

    ),
    );
  }

}

/*


import 'package:flutter/material.dart';


class BottomNavigation {
  Widget getBottomNavigationbar(context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Attendancep()));
            },
            child: Icon(Icons.home, color: Colors.white),
          ),
          title: Text('Attendance', style: TextStyle(color: Colors.white)),
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Academicp()));
              },
              child: Icon(Icons.business, color: Colors.white)),
          title: Text('Academics', style: TextStyle(color: Colors.white)),
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Teacherlistp()));
              },
              child: Icon(Icons.school, color: Colors.white)),
          title: Text('Teacher List', style: TextStyle(color: Colors.white)),
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap:(){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profilep()));
              },
              child: Icon(Icons.person, color: Colors.white)),
          title: Text('Profile', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}

*/