import 'package:flutter/material.dart';
import '../student_app/constants.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool checkboxvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: Center(
                  child: Text('Sign Up', style: headingstyle),
                ),
              ),
              Center(
                child: Text(
                  'Please signup to continue using the app',
                  style: TextStyle(
                    fontSize: height * 0.022,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: textFieldPadding2,
                child: Material(
                  elevation: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      hintText: 'Your Full Name',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: textFieldPadding2,
                child: Material(
                  elevation: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'E-mail ID',
                      labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      hintText: 'Your E-mail ID',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: textFieldPadding2,
                child: Material(
                  elevation: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Reg No',
                      labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      hintText: 'Your Registration Number',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: textFieldPadding2,
                child: Material(
                  elevation: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'School Code',
                      labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      hintText: 'Your School Code',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: textFieldPadding2,
                child: Material(
                  elevation: 20,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: textFieldPadding2,
                child: Material(
                  elevation: 20,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      hintText: 'Re-Enter Password',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: Row(children: [
                  Checkbox(
                    value: checkboxvalue,
                    activeColor: Colors.yellow,
                    onChanged: (bool newValue) {
                      setState(() {
                        checkboxvalue = newValue;
                      });
                    }),
                  Text('I agree with privacy policy')
                ],),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical:height * 0.01, horizontal: width*0.22),
                child: ButtonTheme(
                  height: height * 0.07,
                  child: RaisedButton(
                      onPressed: () {},
                      color: Colors.black,
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.035,
                            letterSpacing: 1),
                      ),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
