import 'package:flutter/material.dart';
import 'constants.dart';
import 'loginPage.dart';

class IntroPage extends StatelessWidget {
  Widget createButton(String text, Color buttonColor, Color textColor) {
    return Padding(
      padding: EdgeInsets.all(height * 0.008),
      child: ButtonTheme(
        height: height * 0.065,
        minWidth: width * 0.5,
        child: RaisedButton(
            onPressed: () {},
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
                  child: Text(
                    'Welcome to IVentors Initiatives',
                    style: headingstyle
                  ),
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
              createButton('Parents', Colors.black, Colors.white),
              createButton('Students', Colors.yellow, Colors.white),
              Padding(
                padding: EdgeInsets.all(height * 0.008),
                child: ButtonTheme(
                  height: height * 0.065,
                  minWidth: width * 0.5,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
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
