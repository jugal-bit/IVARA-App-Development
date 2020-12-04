import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class PYQSeries {
  String subject;
  int paperYear;
  String platform;
  PYQSeries({this.subject, this.paperYear, this.platform});
}

class MockPYQWidget extends StatelessWidget {
  final String mock;
  final PYQSeries series;
  MockPYQWidget({this.mock, this.series});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 10, 1, 15),
      child: Container(
          height: 130,
          width: 360,
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.black87, width: 2)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(343, 0, 0, 0),
                child: Icon(
                  LineAwesomeIcons.ribbon,
                  size: 10,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(11, 0, 1, 1),
                child: Text(
                  "${series.subject} Question Paper",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(11, 1, 1, 1),
                child: Text(
                  "Exam Year : ${series.paperYear} \nPlatform : ${series.platform}",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(230, 7, 1, 3),
                child: Container(
                  height: 30,
                  width: 115,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                        child: Text('Attempt $mock',
                            style: TextStyle(
                                fontSize: 15, color: Colors.amberAccent)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
