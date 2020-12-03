import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Center(
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        elevation: 10,
                        child: Padding(padding: EdgeInsets.all(8.0),
                        child: Image.asset('assets/icons/student.png',width: 80, height: 80),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Hello, Mayankesh Mishra',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            CustomListTile(
              LineAwesomeIcons.home,
              'Home',
              () => {},
            ),
            CustomListTile(
                LineAwesomeIcons.rocket_chat, 'Chat With Us', () => {}),
            CustomListTile(
                LineAwesomeIcons.ios_app_store, 'About IVentors', () => {}),
            CustomListTile(
                LineAwesomeIcons.user_circle, 'My Profile', () => {}),
            CustomListTile(
                LineAwesomeIcons.comment_dollar, 'My Referrals', () => {}),
            CustomListTile(LineAwesomeIcons.question, 'FAQ\'s', () => {}),
            CustomListTile(Icons.exit_to_app, 'Logout', () => {}),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))
        ),
        child: InkWell(
          splashColor: Colors.amber,
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
