import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:condition/condition.dart';
import 'package:ivara_app_development/student_app/test/mock_pyq.dart';
import 'package:ivara_app_development/student_app/test/mock_quiz.dart';
import 'package:ivara_app_development/student_app/test/mock_test.dart';
import '../../student_app/constants.dart';

class TestPage extends StatefulWidget {
  TestPage();

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<TestSeries> testSeries = [
    TestSeries(
        subject: 'Biology',
        topic: 'Refactored',
        totalMarks: 20,
        date: 02,
        month: 12,
        year: 2020),
    TestSeries(
        subject: 'Maths',
        topic: 'Trigonometry',
        totalMarks: 50,
        date: 05,
        month: 12,
        year: 2020),
    TestSeries(
        subject: 'Chemistry',
        topic: 'Carbon',
        totalMarks: 100,
        date: 03,
        month: 12,
        year: 2020),
  ];

  List<QuizSeries> quizSeries = [
    QuizSeries(
        subject: 'History',
        topic: 'Refactored',
        totalMarks: 20,
        date: 02,
        month: 12,
        year: 2020),
    QuizSeries(
        subject: 'Maths',
        topic: 'Trigonometry',
        totalMarks: 50,
        date: 05,
        month: 12,
        year: 2020),
    QuizSeries(
        subject: 'Chemistry',
        topic: 'Carbon',
        totalMarks: 100,
        date: 03,
        month: 12,
        year: 2020),
  ];

  List<PYQSeries> pyqSeries = [
    PYQSeries(subject: 'History', paperYear: 2016, platform: 'ISC Board'),
    PYQSeries(subject: 'Geography', paperYear: 2018, platform: 'CBSE'),
    PYQSeries(subject: 'Physics', paperYear: 2019, platform: 'JEE Advance'),
    PYQSeries(subject: 'Hindi', paperYear: 2020, platform: 'CBSE'),
    PYQSeries(subject: 'Chemistry', paperYear: 2017, platform: 'ISC Board'),
  ];
  String mock = 'Test';

  Widget testseriesTemplate(series) {
    return MockTestWidget(mock: mock, series: series);
  }

  Widget quizseriesTemplate(series) {
    return MockQuizWidget(mock: mock, series: series);
  }

  Widget pyqseriesTemplate(series) {
    return MockPYQWidget(mock: mock, series: series);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        mock = 'Test';
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 20, 10, 10),
                      child: Container(
                          height: 180,
                          width: 360,
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 6.0,
                                spreadRadius: 1.0,
                                offset: Offset(
                                  15.0,
                                  15.0,
                                ),
                              )
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(4, 1, 1, 1),
                                child: Image.asset("assets/icons/test1.png"),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(31, 1, 1, 1),
                                child: Text(
                                  "Test Series",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(1),
                                child:
                                    Icon(LineAwesomeIcons.arrow_circle_right),
                              )
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              mock = 'Quiz';
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(18, 15, 1, 1),
                            child: Container(
                                height: 90,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 6.0,
                                      spreadRadius: 1.0,
                                      offset: Offset(
                                        15.0,
                                        15.0,
                                      ),
                                    )
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(31, 1, 5, 1),
                                      child: Text(
                                        "Quizzes",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(1),
                                      child: Icon(LineAwesomeIcons
                                          .arrow_circle_right),
                                    )
                                  ],
                                )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              mock = 'PYQ';
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 15, 1, 1),
                            child: Container(
                                height: 90,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 6.0,
                                      spreadRadius: 1.0,
                                      offset: Offset(
                                        15.0,
                                        15.0,
                                      ),
                                    )
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(40, 1, 5, 1),
                                      child: Text(
                                        "PYQs",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(1),
                                      child: Icon(LineAwesomeIcons
                                          .arrow_circle_right),
                                    )
                                  ],
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 30, 1, 1),
                          child: Text(
                            "Ongoing mock $mock\s :",
                            style: TextStyle(
                                fontSize: 17, fontStyle: FontStyle.italic),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1),
                    child: Conditioned(
                      cases: [
                        Case(
                          mock == 'Test',
                          builder: () => Column(
                            children: testSeries
                                .map((TestSeries) =>
                                    testseriesTemplate(TestSeries))
                                .toList(),
                          ),
                        ),
                        Case(
                          mock == 'Quiz',
                          builder: () => Column(
                            children: quizSeries
                                .map((QuizSeries) =>
                                    quizseriesTemplate(QuizSeries))
                                .toList(),
                          ),
                        ),
                        Case(
                          mock == 'PYQ',
                          builder: () => Column(
                            children: pyqSeries
                                .map((PYQSeries) =>
                                    pyqseriesTemplate(PYQSeries))
                                .toList(),
                          ),
                        ),
                      ],
                      defaultBuilder: () => Column(
                        children: testSeries
                            .map((TestSeries) =>
                                testseriesTemplate(TestSeries))
                            .toList(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
    );
  }
}
