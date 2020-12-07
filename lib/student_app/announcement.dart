import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Announcement extends StatelessWidget {
  static String id = 'announcement';
  const Announcement({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 1.0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.amberAccent,
              ),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        title: SizedBox(
            height: 35.0, child: Image.asset("assets/icons/logo_long.jpeg")),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(1, 1, 10, 1),
            child: Icon(
              LineAwesomeIcons.volume_up,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 20, 1, 20),
              child: Text(
                'Announcements',
                style: TextStyle(
                  fontSize: 30,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.grey[700],
                ),
              ),
            ),
            NotificationBar(
              message: 'Dear Students, today\'s class has been postponed.',
            ),
            NotificationBar(
              message:
                  'Adipisicing do excepteur duis proident pariatur et nostrud do cillum anim. tate proident deserunt ullamco commodo velit pariatur non. Proident deserunt mollit ullamco sint mollit tempor. Enim irure commodo aliqua qui laborum ad ea amet enim qui amet. Esse nostrud deserunt magna do laborum ex ullamco Lorem exercitation.',
            ),
            NotificationBar(
              message:
                  'Laboris velit officia fugiat aute irure et ex ad consectetur sint ullamco cupidatat. Pariatur tempor pariatur elit adipisicing. Quis magna quis ea sit do deserunt Lorem id excepteur quis pariatur incididunt.',
            ),
            NotificationBar(
              message:
                  'Commodo non fugiat do amet dolore laboris ipsum ullamco quis. Dolore velit in magna sunt exercitation fugiat occaecat do sint eu ea aute. Qui aute ipsum id velit dolor exercitation culpa ad Lorem.',
            )
          ],
        ),
      ),
    );
  }
}

class NotificationBar extends StatelessWidget {
  final String message;
  NotificationBar({this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 1, 30, 20),
      child: Opacity(
        opacity: 0.8,
        child: Container(
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15.0,
                  spreadRadius: 0.5,
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
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/icons/teacher.png",
                    width: 50,
                    height: 50,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      message,
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.left,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
