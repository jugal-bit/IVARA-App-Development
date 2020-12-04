import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:flutter/animation.dart';

class TestSeries {
  String subject;
  String topic;
  int totalMarks;
  int date;
  int month;
  int year;
  TestSeries(
      {this.subject, this.topic, this.totalMarks, this.date, this.month,this.year});
}

class MockTestWidget extends StatelessWidget {
  final String mock;
  final TestSeries series;
  MockTestWidget({this.mock, this.series});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 10, 1, 15),
      child: Container(
          height: 140,
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
                    child: Icon(LineAwesomeIcons.ribbon,size: 10,),
                    ),
              Padding(
                padding: EdgeInsets.fromLTRB(11, 0, 1, 1),
                child: Text(
                  "${series.subject}\'s " + mock,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(11, 1, 1, 1),
                child: Text(
                  "Test Topic : ${series.topic} \nTotal Marks : ${series.totalMarks}",
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
              BlinkingTextAnimation(series: series,),
            ],
          )),
    );
  }
}

//Blinking test class
class BlinkingTextAnimation extends StatefulWidget {
  final TestSeries series;
  BlinkingTextAnimation({this.series});
  @override
  _BlinkingAnimationState createState() => _BlinkingAnimationState(series: series);
}

class _BlinkingAnimationState extends State<BlinkingTextAnimation>
    with SingleTickerProviderStateMixin {
  final TestSeries series;
  _BlinkingAnimationState({this.series});
  Animation<Color> animation;
  AnimationController controller;

  initState() {
    super.initState();

    controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);

    final CurvedAnimation curve =
        CurvedAnimation(parent: controller, curve: Curves.ease);

    animation = ColorTween(begin: Colors.white, end: Colors.red).animate(curve);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget child) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(200, 1, 1, 1),
            child: new Container(
              child: Text('Test is live till ${series.date}/${series.month}/${series.year}',
                  style: TextStyle(color: animation.value, fontSize: 14)),
            ),
          );
        });
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}