import 'package:flutter/material.dart';

import '../student_app/constants.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: height * 0.02, bottom: height * 0.07),
            child: CircleAvatar(
                child: Image.asset('./assets/profile.png'),
                radius: height * 0.12)),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.003, horizontal: width * 0.05),
          child: Card(
              elevation: 10,
              color: yellowDefault,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: height * 0.025, horizontal: width * 0.05),
                    child: Text(
                      'Name :',
                      style: TextStyle(
                          fontSize: height * 0.03, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      readOnly: true,
                      style: TextStyle(fontSize: height * 0.028),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                        hintText: 'Mayankesh Mishra',
                      ),
                    ),
                  )
                ],
              )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.003, horizontal: width * 0.05),
          child: Card(
              elevation: 10,
              color: yellowDefault,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: height * 0.025, horizontal: width * 0.05),
                    child: Text(
                      'E-mail:',
                      style: TextStyle(
                          fontSize: height * 0.03, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      readOnly: true,
                      style: TextStyle(fontSize: height * 0.028),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                        hintText: 'mayankeshmishra100@gmail.com',
                      ),
                    ),
                  )
                ],
              )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.003, horizontal: width * 0.05),
          child: Card(
              elevation: 10,
              color: yellowDefault,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: height * 0.025, horizontal: width * 0.05),
                    child: Text(
                      'Phone :',
                      style: TextStyle(
                          fontSize: height * 0.03, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      readOnly: true,
                      style: TextStyle(fontSize: height * 0.028),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                        hintText: '7905084484',
                      ),
                    ),
                  )
                ],
              )),
        ),
        Padding(
          padding: EdgeInsets.all(height * 0.01),
          child: RaisedButton(
              elevation: 5,
              color: Colors.black,
              onPressed: () {},
              child: Text('Edit', style: TextStyle(color: Colors.white))),
        )
      ],
    );
  }
}
