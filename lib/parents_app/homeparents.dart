import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepar extends StatefulWidget{
  @override

  _HomeparState   createState() => _HomeparState();

}

class _HomeparState extends  State<Homepar>{

  int _currentindex = 0;

  final tabs = [
    Center(child: Text('Home')),
    Center(child: Text('Academic')),
    Center(child: Text('Teacher List')),
    Center(child: Text('Profile')),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Home Bar'),
     ),
      body: Container(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        //    backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          iconSize: 40,
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
      onTap: (index){
         setState(() {
           _currentindex = index;
         });
      },
    ),
    );
  }

}