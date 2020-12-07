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
          backgroundColor: Colors.black,
         type: BottomNavigationBarType.fixed,
        currentIndex: _currentindex,
          iconSize: 35,
        onTap: onTappedBar,
          items: [
            BottomNavigationBarItem(
          icon: Icon(Icons.date_range),
                title: Text('Attendance'),
                backgroundColor: Colors.white
    ),
            BottomNavigationBarItem(
                icon: Icon(Icons.insert_chart),
               title: Text('Academics'),
               backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Teachers List'),
                backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
               backgroundColor: Colors.white
            ),
      ],
        selectedItemColor: Colors.yellow,

    ),
    );
  }

}