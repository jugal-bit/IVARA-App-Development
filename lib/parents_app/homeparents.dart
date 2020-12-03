import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivara_techer_app/parents_app/academicp.dart';
import 'package:ivara_techer_app/parents_app/attendancep.dart';
import 'package:ivara_techer_app/parents_app/profilep.dart';
import 'package:ivara_techer_app/parents_app/teacherslistp.dart';

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

        //    backgroundColor: Colors.black,

          type: BottomNavigationBarType.fixed,
        currentIndex: _currentindex,
          iconSize: 40,
        onTap: onTappedBar,
          items: [
            BottomNavigationBarItem(
          icon: Icon(Icons.date_range_sharp),
    title: Text('Attendance'),
    backgroundColor: Colors.black
    ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart),
                title: Text('Academic'),
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

    ),
    );
  }

}