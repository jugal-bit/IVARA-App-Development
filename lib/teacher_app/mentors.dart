import 'package:flutter/material.dart';
import 'drawer.dart';
import 'bottomNavigation.dart';

import 'constants.dart';

class Mentors extends StatefulWidget {
  @override
  _MentorsState createState() => _MentorsState();
}

class _MentorsState extends State<Mentors> {

  List mentors = ['Khushwant', 'Mayankesh', 'Aman'];

  Widget mentorsList() {
    return ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: mentors.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical:1.0, horizontal: 8),
              child:Card(
              color: Color(0xFFFEE715),
              child: Padding(
                padding: EdgeInsets.all(height * 0.02),
                child: Row(
                  children: [
                    Text(mentors[index],
                        style: TextStyle(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w500)),
                    Spacer(),
                    Card(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
                        child: Text('Call'),
                      ),
                    ),
                    Card(
                      color: Colors.black,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
                        child: Text('Message',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: TeacherDrawer().getDrawer(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Stack(
            children: <Widget>[
              Container(
                height: height * 0.08,
                color: Colors.white,
              ),
              Positioned(
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  actions: [Icon(Icons.notifications)],
                ),
              )
            ],
          ),
          Expanded(
            child:  mentorsList()
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigation().getBottomNavigationbar(context),
    );
  }
}
