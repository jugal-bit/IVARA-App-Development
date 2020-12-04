import 'package:flutter/material.dart';
import 'package:ivara_app_development/teacher_app/constants.dart';

import 'loginpageparents.dart';

class SignUpPage2 extends StatefulWidget {
  @override
  _SignUp2PageState createState() => _SignUp2PageState();
}

class _SignUp2PageState extends State<SignUpPage2> {
  bool checkboxvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: Center(
                  child: Text('Sign Up',
                  style: TextStyle( color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600),),
                ),
              ),
              Center(
                child: Text(
                  'Please signup to continue using the app',
                  style: TextStyle(
                    color: Colors.white,
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
                    focusColor: Colors.white,
                      value: checkboxvalue,

                      activeColor: Colors.yellow,
                      onChanged: (bool newValue) {
                        setState(() {
                          checkboxvalue = newValue;
                        });
                      }),
                  Text('I agree with privacy policy', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500))
                ],),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical:height * 0.01, horizontal: width*0.22),
                child: ButtonTheme(
                  height: height * 0.07,
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPagep()));
                      },
                      color: Colors.yellow,
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.035,
                            letterSpacing: 1),
                      ),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0))
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
