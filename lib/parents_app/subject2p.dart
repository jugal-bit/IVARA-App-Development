import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class subject2p extends StatefulWidget{
  @override

  _Subject2atpState  createState() => _Subject2atpState();

}

class _Subject2atpState extends State<subject2p> {
  CalendarController _controller;

  @override
  void initState() {
    // TODO: implement deactivate
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Attendance"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20,0 ,00),
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Physics', style: TextStyle(color: Colors.black,fontSize: 70.0,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),
          new Container(
              child: Center(
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,20,20,0),
                      child: Container(
                        height: 85.0,
                        child: new SizedBox(
                          width: 85.0,

                          child: RaisedButton(
                            onPressed: () {
                            },
                            color: Colors.white,
                            child: Text(
                              '25',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 50.0,
                                  letterSpacing: 1),
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
                          width: 85.0,

                          child: RaisedButton(
                            onPressed: () {
                            },
                            color: Colors.white,
                            child: Text(
                              '05',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 50.0,
                                  letterSpacing: 1),
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
                          width: 85.0,
                          child: RaisedButton(
                            onPressed: () {
                            },
                            color: Colors.white,
                            child: Text(
                              '30',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 50.0,
                                  letterSpacing: 1),
                            ),
                            padding: const EdgeInsets.all(8.0),

                          ),
                        ), // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.amberAccent)),
                      ),
                    ),
                  ],
                ),
              )
          ),
          new Container(
              child: Center(
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,30,10,30),
                      child: Center(
                        child: Text('Attend',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w900
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50,30,10,30),
                      child: Center(
                        child: Text('Absent',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w900
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40,30,10,30),
                      child: Center(
                        child: Text('Total',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w900
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),
          TableCalendar(
            initialCalendarFormat: CalendarFormat.month,
            calendarStyle: CalendarStyle(
              todayColor: Colors.blue,
              selectedColor: Theme.of(context).primaryColorDark,
              todayStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            headerStyle: HeaderStyle(
              centerHeaderTitle: true,
              formatButtonDecoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20.0),
              ),
              formatButtonTextStyle: TextStyle(
                  color: Colors.white
              ),
              formatButtonShowsNext: false,
            ),
            startingDayOfWeek: StartingDayOfWeek.monday,
            calendarController: _controller,
          ),

        ],

      ),
    );
  }
}

