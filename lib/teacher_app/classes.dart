import 'package:flutter/material.dart';
import 'package:ivara_techer_app/teacher_app/class.dart';
import 'package:ivara_techer_app/teacher_app/tabs/bottomNavigation.dart';
import 'drawer.dart';
import 'constants.dart';

class ClassPage extends StatefulWidget {
  @override
  _ClassPageState createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  List<Map<String, String>> classes = [
    {'image': './assets/class7.jpg', 'classnum': 'Class 7'},
    {'image': './assets/class7.jpg', 'classnum': 'Class 8'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: TeacherDrawer().getDrawer(),
      body: SafeArea(
        child: Column(
          children: [
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
            SizedBox(
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(2, (index) {
                  return Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ParticularClass()));
                      },
                      child: Stack(
                        children: [
                          Image.asset(classes[index]['image']),
                          Positioned(
                            top: height * 0.24,
                            left: width * 0.13,
                            child: Text(
                              classes[index]['classnum'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.035,
                                fontWeight: FontWeight.bold,
                                shadows: <Shadow>[
                                  Shadow(
                                      offset: Offset(2, 3),
                                      blurRadius: 7.0,
                                      color: Colors.black),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: height * 0.05),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black54,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Image.asset('./assets/skillDevelopment.jpg',
                      height: height * 0.25, width: width * 0.8),
                ),
                Positioned(
                  top: height * 0.2,
                  left: width * 0.15,
                  child: Text(
                    'Skill Development',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontSize: height * 0.035,
                      fontWeight: FontWeight.w500,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(2, 3),
                            blurRadius: 7.0,
                            color: Colors.black),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation().getBottomNavigationbar(context),
    );
  }
}
