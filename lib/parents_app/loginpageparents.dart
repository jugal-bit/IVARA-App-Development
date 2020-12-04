
import 'package:flutter/material.dart';
import 'package:ivara_techer_app/parents_app/homeparents.dart';
import 'package:ivara_techer_app/parents_app/signuppageparents.dart';
import 'package:ivara_techer_app/teacher_app/constants.dart';


class LoginPagep extends StatefulWidget{
  @override
  _LoginPagepState createState() => _LoginPagepState();
}

class _LoginPagepState  extends State<LoginPagep>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
              child: Center(
                child: Text('IVentors Initiatives',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w600
                ),),
              ),
              ),
              Center(
                child: Text(
                  'Please login to continue using the app',
                  style: TextStyle(
                    color: Colors.white,
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
                  child: Text('Forgot Password?',
                      style: TextStyle( color: Colors.white,  fontWeight: FontWeight.w600)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(height * 0.02),
                child: ButtonTheme(
                  height: height * 0.07,
                  minWidth: width * 0.5,
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Homepar()));
                      },
                      color: Colors.yellow,
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.035,
                            letterSpacing: 1),
                      ),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)
                      ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have account? ',
                      style: TextStyle( color: Colors.white,  fontWeight: FontWeight.w600)),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpPage2()));
                    },
                    child: Text('Sign Up',
                        style: TextStyle(
                            color: Colors.amber, fontWeight: FontWeight.w600)),
                  )
                ],
              ),
              SizedBox(height:height*0.03),
              Center(child: Text('Enter via Social Network',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500))),
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