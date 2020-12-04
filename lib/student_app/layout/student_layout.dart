import 'package:flutter/material.dart';
import 'package:ivara_techer_app/student_app/test/student_test.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../homePage.dart';
import '../student_mentor.dart';
import '../student_profile.dart';
import 'myDrawer.dart';



class LayoutPage extends StatefulWidget {
  static String id = 'layoutPage';
  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int index = 0;
  final topBar = new AppBar(
    backgroundColor: Colors.black,
    centerTitle: true,
    elevation: 1.0,
    // leading: Builder(
    //   builder: (BuildContext context) {
    //     return IconButton(
    //       icon: const Icon(Icons.menu),
    //       onPressed: () {
    //         Scaffold.of(context).openDrawer();
    //       },
    //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
    //     );
    //   },
    // ),
    title: SizedBox(
        height: 35.0, child: Image.asset("assets/icons/logo_long.jpeg")),
    actions: <Widget>[
      Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.announcement,
              color: Colors.amberAccent,
            ),
          ),
        ],
      )
    ],
  );

  PageController _pageController = PageController();

  List<Widget> _screen = [
    HomePage(),
    TestPage(),
    MentorPage(),
    ProfilePage(),
  ];

  int _selectedIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topBar,
        body: PageView(
          controller: _pageController,
          children: _screen,
          onPageChanged: _onPageChanged,
          physics: NeverScrollableScrollPhysics(),
        ),
        drawer: MyDrawer(
          onTap: (ctx, i) {
            setState(() {
              index = i;
              Navigator.pop(ctx);
            });
          },
        ),
        // body: new InstaBody(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _selectedIndex == 0 ? Colors.yellow : Colors.grey,
              ),
              title: Text(
                'Iventors',
                style: TextStyle(
                  color: _selectedIndex == 0 ? Colors.yellow : Colors.grey,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.assignment_turned_in,
                color: _selectedIndex == 1 ? Colors.yellow : Colors.grey,
              ),
              title: Text(
                'Tests',
                style: TextStyle(
                  color: _selectedIndex == 1 ? Colors.yellow : Colors.grey,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                LineAwesomeIcons.chalkboard_teacher,
                color: _selectedIndex == 2 ? Colors.yellow : Colors.grey,
              ),
              title: Text(
                'Mentor',
                style: TextStyle(
                  color: _selectedIndex == 2 ? Colors.yellow : Colors.grey,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                LineAwesomeIcons.user_circle,
                color: _selectedIndex == 3 ? Colors.yellow : Colors.grey,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: _selectedIndex == 3 ? Colors.yellow : Colors.grey,
                ),
              ),
            ),
          ],
        ));
  }
}
