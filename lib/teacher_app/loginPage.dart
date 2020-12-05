import 'package:flutter/material.dart';

import 'signupPage.dart';
import 'constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: Center(
                  child: Text('IVentors Initiatives', style: headingstyle),
                ),
              ),
              Center(
                child: Text(
                  'Please login to continue using the app',
                  style: TextStyle(
                    fontSize: height * 0.022,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.125,
              ),
              Padding(
                padding: textFieldPadding,
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
                padding: textFieldPadding,
                child: Material(
                  elevation: 20,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      hintText: 'Your Password',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: textFieldPadding,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text('Forgot Password?'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(height * 0.02),
                child: ButtonTheme(
                  height: height * 0.07,
                  minWidth: width * 0.5,
                  child: RaisedButton(
                      onPressed: () {},
                      color: Colors.black,
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.035,
                            letterSpacing: 1),
                      ),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
              ),
              SizedBox(
                height: height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have account? ',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpPage()));
                    },
                                      child: Text('Sign Up',
                        style: TextStyle(
                            color: Colors.amber, fontWeight: FontWeight.w600)),
                  )
                ],
              ),
              SizedBox(height:height*0.03),
              Center(child: Text('Enter via Social Network',style: TextStyle(fontWeight: FontWeight.w500))),
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/gmail_icon.png',height:height*0.1),
                Image.asset('assets/facebook.png',height:height*0.05),
              ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
