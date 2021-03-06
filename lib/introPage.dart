import 'package:flutter/material.dart';
import 'package:ivara_app_development/teacher_app/mainFrame.dart';
import './student_app/home/classDashboard.dart';
import './student_app/layout/myDrawer.dart';
import './student_app/layout/student_layout.dart';
import './student_app/student_profile.dart';
import './teacher_app/classes.dart';
import './teacher_app/referralScreen.dart';
import './parents_app/loginpageparents.dart';
import 'homePage.dart';


import 'student_app/constants.dart';
import 'teacher_app/loginPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class IntroPage extends StatelessWidget {
  Widget createButton(String text, Color buttonColor, Color textColor) {
    return Padding(
      padding: EdgeInsets.all(height * 0.008),
      child: ButtonTheme(
        height: height * 0.065,
        minWidth: width * 0.5,
        child: RaisedButton(
            onPressed: () {
              // Uncomment this section and run the app, click on Parents and if you see 'Connected' in terminal then it means firebase is connected.
            //   Firestore.instance
            //   .collection('dummy/TJi0QgSPT1VGzzavB0lK/messages')
            //   .snapshots()
            //   .listen(
            //     (data) {
            //       print(data.documents[0]['text']);
            //     },
            //   );
            },
            color: buttonColor,
            child: Text(
              text,
              style: TextStyle(
                  color: textColor, fontSize: height * 0.03, letterSpacing: 1),
            ),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: Center(
                  child: Text('Welcome to IVentors Initiatives',
                      style: headingstyle),
                ),
              ),
              Center(
                child: Text(
                  'Please login or signup to continue using the app',
                  style: TextStyle(
                    fontSize: height * 0.022,
                    color: Colors.black45,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Image.asset(
                'assets/vector1.jpeg',
                alignment: Alignment.center,
              ),
              // createButton('Parents', Colors.black, Colors.white),
              Padding(
                padding: EdgeInsets.all(height * 0.008),
                child: ButtonTheme(
                  height: height * 0.065,
                  minWidth: width * 0.5,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPagep()));
                    },
                    color: Colors.black,
                    child: Text(
                      'Parents',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.03,
                          letterSpacing: 1),
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 2),
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),Padding(
                padding: EdgeInsets.all(height * 0.008),
                child: ButtonTheme(
                  height: height * 0.065,
                  minWidth: width * 0.5,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LayoutPage()));
                    },
                    color: Colors.amber,
                    child: Text(
                      'Students',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.03,
                          letterSpacing: 1),
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.amber, width: 2),
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
             // createButton('Students', Colors.yellow, Colors.white),
             
              Padding(
                padding: EdgeInsets.all(height * 0.008),
                child: ButtonTheme(
                  height: height * 0.065,
                  minWidth: width * 0.5,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MainFrame(0)));
                    },
                    color: Colors.white,
                    child: Text(
                      'Teachers',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.03,
                          letterSpacing: 1),
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 2),
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
