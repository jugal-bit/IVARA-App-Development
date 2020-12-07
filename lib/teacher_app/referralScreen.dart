import 'package:flutter/material.dart';
import 'package:ivara_app_development/teacher_app/notifications.dart';
// import 'constants.dart';


import '../student_app/constants.dart';
import 'drawer.dart';

class Referral extends StatelessWidget {
  List referrals = [
    'Mayankesh Mishra',
    'Aman Sharma',
    'Mayankesh Mishra',
    'Mayankesh Mishra'
  ];
  Widget referralList() {
    return ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: referrals.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Color(0xFFFEE715),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.03),
              child: Center(
                  child: Text(
                referrals[index],
                style: TextStyle(fontWeight: FontWeight.w500),
              )),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: TeacherDrawer().getDrawer(context),
        body: SafeArea(
            child: Column(
          children: [
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: height * 0.08),
                  child: Container(
                    child: Image.asset('./assets/referral.png'),
                  ),
                ),
                Positioned(
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    actions: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Announcement()));
                          },
                          child: Icon(Icons.notifications))
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Referral Code : ',
                  style: TextStyle(fontSize: height * 0.035),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Color(0xFFFEE715).withOpacity(0.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text('Sf4u26',
                        style: TextStyle(
                          fontSize: height * 0.03,
                        )),
                  ),
                )
              ],
            ),
            SizedBox(height: height * 0.03),
            Text(
              'Your Referral Details : ',
              style: TextStyle(
                  fontSize: height * 0.035, fontWeight: FontWeight.w600),
            ),
            Expanded(child: referralList())
          ],
        )));
  }
}
