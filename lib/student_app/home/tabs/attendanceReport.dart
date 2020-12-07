import 'package:flutter/material.dart';
import 'package:cell_calendar/cell_calendar.dart';

class AttendanceReport extends StatefulWidget {
  const AttendanceReport({Key key}) : super(key: key);

  @override
  _AttendanceReportState createState() => _AttendanceReportState();
}

class _AttendanceReportState extends State<AttendanceReport> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Padding(
          padding: EdgeInsets.all(1),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 1, 1),
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6.0,
                              spreadRadius: 1.0,
                              offset: Offset(
                                1.0,
                                1.0,
                              ),
                            )
                          ],
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(1),
                            child: Text('1',
                            style: TextStyle(
                              fontSize: 50,
                          fontWeight: FontWeight.w900,
                            ),
                            ),
                            ),
                        ),
                        
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        "Attend",
                        style: TextStyle(
                          fontSize: 17,
                          ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 1, 1),
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6.0,
                              spreadRadius: 1.0,
                              offset: Offset(
                                1.0,
                                1.0,
                              ),
                            )
                          ],
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(1),
                            child: Text('1',
                            style: TextStyle(
                              fontSize: 50,
                          fontWeight: FontWeight.w900,
                            ),
                            ),
                            ),
                        ),
                        
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        "Absent",
                        style: TextStyle(fontSize: 17),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 1, 1),
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6.0,
                              spreadRadius: 1.0,
                              offset: Offset(
                                1.0,
                                1.0,
                              ),
                            )
                          ],
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(1),
                            child: Text('1',
                            style: TextStyle(
                              fontSize: 50,
                          fontWeight: FontWeight.w900,
                            ),
                            ),
                            ),
                        ),
                        
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        "Total Class",
                        style: TextStyle(fontSize: 17),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(18),
        //   child: CellCalendar(
        //     events: [
        //       CalendarEvent(eventName: "Event 1",eventDate: ),
        //       CalendarEvent(eventName: "Event 2",eventDate: DateTime2),
        //     ]
        //   ),
        // ),
      ],
    );
  }
}