import 'package:flutter/material.dart';

class subject4p extends StatefulWidget{
  @override

  _Subject4atpState  createState() => _Subject4atpState();

}

class _Subject4atpState extends State<subject4p> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50,0 ,50),
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('History', style: TextStyle(color: Colors.white,fontSize: 50.0,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),
          Expanded(child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  // colors: [ Color.fromRGBO(0, 0, 0, 0.0),Colors.white,]
                  colors: [Color(0xFFFFFFFF),Colors.white]
              ),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,20,0),
                  child: Container(
                    height: 85.0,
                    child: new SizedBox(
                      width: 320.0,

                      child: RaisedButton(
                        onPressed: () {
                        },
                        color: Colors.white,
                        child: Text(
                          'Biology',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.0,
                              letterSpacing: 1),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black12, width: 2),
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.all(8.0),

                      ),
                    ), // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.amberAccent)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,20,0),
                  child: Container(
                    height: 85.0,
                    child: new SizedBox(
                      width: 320.0,

                      child: RaisedButton(
                        onPressed: () {
                        },
                        color: Colors.white,
                        child: Text(
                          'Physics',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.0,
                              letterSpacing: 1),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black12, width: 2),
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.all(8.0),

                      ),
                    ), // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.amberAccent)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,20,0),
                  child: Container(
                    height: 85.0,
                    child: new SizedBox(
                      width: 320.0,

                      child: RaisedButton(
                        onPressed: () {
                        },
                        color: Colors.white,
                        child: Text(
                          'Chemistry',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.0,
                              letterSpacing: 1),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black12, width: 2),
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.all(8.0),

                      ),
                    ), // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.amberAccent)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,20,0),
                  child: Container(
                    height: 85.0,
                    child: new SizedBox(
                      width: 320.0,

                      child: RaisedButton(
                        onPressed: () {
                        },
                        color: Colors.white,
                        child: Text(
                          'History',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.0,
                              letterSpacing: 1),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black12, width: 2),
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.all(8.0),

                      ),
                    ), // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.amberAccent)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,20,0),
                  child: Container(
                    height: 85.0,
                    child: new SizedBox(
                      width: 320.0,

                      child: RaisedButton(
                        onPressed: () {
                        },
                        color: Colors.white,
                        child: Text(
                          'Geography',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.0,
                              letterSpacing: 1),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black12, width: 2),
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.all(8.0),

                      ),
                    ), // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.amberAccent)),
                  ),
                ),
              ],
            ),
          ),
          ),
        ],
      ),
    );
  }
}

