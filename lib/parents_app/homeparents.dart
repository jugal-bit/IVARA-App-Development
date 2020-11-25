import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepar extends StatefulWidget{
  @override

  _HomeparState   createState() => _HomeparState();

}

class _HomeparState extends  State<Homepar>{

  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Home Bar'),
     ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
          icon: Icon(Icons.date_range_sharp),
    title: Text('Attendance'),
    backgroundColor: Colors.black
    ),
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
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
      onTap: (index){
         setState(() {
           _currentindex = index;
         });
      },
    ),
    );
  }

}