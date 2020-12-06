import 'package:flutter/material.dart';
import 'package:ivara_app_development/teacher_app/classes.dart';
import 'package:ivara_app_development/teacher_app/mentors.dart';
import 'package:ivara_app_development/teacher_app/test/student_test.dart';
import 'profilePage.dart';
import 'constants.dart';
import 'drawer.dart';

class MainFrame extends StatefulWidget {
  int index;
  MainFrame(this.index);
  @override
  _MainFrameState createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame> {
  List<Widget> bottomTabs=[ClassPage(),TestPage(),Mentors(),ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: TeacherDrawer().getDrawer(context),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [Icon(Icons.notifications)],
      ),
      body: SafeArea(
        child:bottomTabs[widget.index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        onTap: (newIndex) => setState(() => widget.index = newIndex),
        currentIndex: widget.index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            title: Text('IVentors', style: TextStyle(color: Colors.white)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business, color: Colors.white),
            title: Text('Tests', style: TextStyle(color: Colors.white)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Colors.white),
            title: Text('Mentor', style: TextStyle(color: Colors.white)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            title: Text('Profile', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
