import 'package:flutter/material.dart';
import 'package:ivara_app_development/teacher_app/drawer.dart';

import 'constants.dart';
import 'curvePainter.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  List<Map<String, String>> attendance = [
    {'name': 'Tarun', 'present': 'present'},
    {'name': 'Hemanth', 'present': 'absent'},
    {'name': 'Khushwant', 'present': 'notMarked'}
  ];
  Widget attendanceList() {
    return ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: attendance.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              elevation: 8,
              color: yellow,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.01, horizontal: width * 0.03),
                child: Row(
                  children: [
                    Text(
                      (index + 1).toString() + ". " + attendance[index]['name'],
                      style: TextStyle(
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Container(
                      height: width * 0.09,
                      width: width * 0.09,
                      decoration: BoxDecoration(
                          color: (attendance[index]['present'] == 'present')
                              ? Color(0xFF74ee15)
                              : yellow,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2.0, 2.0), //(x,y)
                              blurRadius: 10.0,
                            ),
                          ]),
                      child: Center(child: Text('P')),
                    ),
                    SizedBox(width: width * 0.02),
                    Container(
                      height: width * 0.09,
                      width: width * 0.09,
                      decoration: BoxDecoration(
                          color: (attendance[index]['present'] == 'absent')
                              ? Color(0xFFff1919)
                              : yellow,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2.0, 2.0), //(x,y)
                              blurRadius: 10.0,
                            ),
                          ]),
                      child: Center(child: Text('A')),
                    ),
                  ],
                ),
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellow,
      drawer: TeacherDrawer().getDrawer(context),
      appBar: AppBar(
        backgroundColor: yellow,
        elevation: 0,
        title: Text(
          'Ravi Teja',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Stack(children: [
            Padding(
              padding: EdgeInsets.all(width * 0.02),
              child: Container(
                width: width * 0.1,
                height: width * 0.1,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
            Positioned(
              top: width * 0.034,
              left: width * 0.035,
              child: Container(
                width: width * 0.07,
                height: width * 0.07,
                decoration: BoxDecoration(
                  color: yellow,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
            Positioned(
              top: width * 0.04,
              left: width * 0.04,
              child: Icon(Icons.notifications),
            )
          ])
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top:height*0.38,
              left:width*0.8,
              child: Container(
                  height: width * 0.3,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.2),
                      color: yellow,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 30.0,
                        ),
                      ])),
            ),
            Positioned(
              top:height*0.414,
              left:width*0.855,
              child: Container(
                  height: width * 0.2,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.2),
                      color: yellow,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 30.0,
                        ),
                      ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
            horizontal: width * 0.05, vertical: height * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select Subject',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: height * 0.025),
                  ),
                  SizedBox(height: height * 0.03),
                  Stack(
                    children: [
                      SizedBox(
                        height: height * 0.3,
                        child: Container(
                          width: double.infinity,
                          child: CustomPaint(
                            painter: CurvePainter(),
                          ),
                        ),
                      ),
                      Positioned(
                        top: height * 0.05,
                        left: width * 0.05,
                        child: Row(
                          children: [
                            Image.asset('./assets/attendance.png',
                                height: height * 0.2,color: Colors.black,),
                            SizedBox(width:width*0.05),
                            Column(children: [
                              Image.asset('./assets/dna.png',
                                  height: height * 0.15),
                              SizedBox(height: height * 0.02),
                              Text(
                                'Biology',
                                style: TextStyle(
                                    fontSize: height * 0.04,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.03),
                    child: Text(
                      'Student Attendance List',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: height * 0.028),
                    ),
                  ),
                  Expanded(child: attendanceList()),
                  Center(
                    child: RaisedButton(
                        color: Colors.black,
                        onPressed: () {},
                        child: Text('Submit',
                            style: TextStyle(color: Colors.white))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: BottomNavigation().getBottomNavigationbar(context),
    );
  }
}
