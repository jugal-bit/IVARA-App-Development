import 'package:flutter/material.dart';
import 'tabs/academicReport.dart';
import 'bottomNavigation.dart';
import 'tabs/classesTab.dart';
import 'tabs/discussion.dart';
import 'tabs/labs.dart';

import 'constants.dart';

class ParticularClass extends StatefulWidget {
  @override
  _ParticularClassState createState() => _ParticularClassState();
}

class _ParticularClassState extends State<ParticularClass> {
  List tabs = [
    'Classes',
    'Labs',
    'Discussion',
    'Academic Report',
    'Attendance'
  ];
  int currentTab=0;
  List<Widget> tabWidgets=[ClassTab(),LabsTab(),DiscussionTab(),AcademicReportTab(),AcademicReportTab()];
  Widget createTabs() {
    return ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: tabs.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.015, horizontal: width * 0.05),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  currentTab=index;
                });
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child:Text(tabs[index])
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: Color(0xFFFEE715),
        title: Text('Biology', style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height * 0.21,
              width: double.infinity,
              color: Color(0xFFFEE715),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: height * 0.05, horizontal: width * 0.1),
                    child: Text('Description',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w500)),
                  ),
                  Expanded(
                    child: createTabs(),
                  ),
                ],
              ),
            ),
            Expanded(child: Container(child:tabWidgets[currentTab]))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation().getBottomNavigationbar(context),
    );
  }
}
