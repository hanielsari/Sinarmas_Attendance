import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinarmas_attendance/absent/absent_page.dart';
import 'package:sinarmas_attendance/home/home_page.dart';
import 'package:sinarmas_attendance/report/report_page.dart';
import 'package:sinarmas_attendance/widget/platformwidget.dart';

class BottomNav extends StatefulWidget {
  static const routeName = '/navi';

  @override
  _BottomNavigation createState() => _BottomNavigation();
}

class _BottomNavigation extends State<BottomNav> {
  int _bottomNavIndex = 0;

  void _onBottomNavTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  static const String _homeText = 'Home';
  static const String _reportText = 'Report';
  static const String _absentText = 'Absent';
  static const String _submissionText = 'Submission';
  static const String _profileText = 'Profile';

  List<Widget> _listWidget = [
    HomePage(),
    ReportPage(),
    AbsentPage(),
  ];

  BottomNavigationBarItem _bottomNavItem(String text, IconData iconData) {
    return BottomNavigationBarItem(
      icon: Icon(iconData, color: Colors.black),
      label: text,
    );
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      body: _listWidget[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red,
        items: [
          _bottomNavItem(
              _homeText, Platform.isIOS ? CupertinoIcons.home : Icons.home),
          _bottomNavItem(
              _reportText,
              Platform.isIOS
                  ? CupertinoIcons.calendar_today
                  : Icons.fact_check),
          _bottomNavItem(
              _absentText,
              Platform.isIOS
                  ? CupertinoIcons.person_crop_circle
                  : Icons.calendar_month),
          _bottomNavItem(
              _submissionText,
              Platform.isIOS
                  ? CupertinoIcons.person_crop_circle
                  : Icons.summarize),
          _bottomNavItem(
              _profileText,
              Platform.isIOS
                  ? CupertinoIcons.person_crop_circle
                  : Icons.person),
        ],
        currentIndex: _bottomNavIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        onTap: _onBottomNavTapped,
      ),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          _bottomNavItem(_homeText, CupertinoIcons.home),
          _bottomNavItem(_reportText, CupertinoIcons.calendar_today),
          _bottomNavItem(_absentText, CupertinoIcons.person_crop_circle),
        ],
        activeColor: Colors.black,
      ),
      tabBuilder: (context, index) {
        return _listWidget[index];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
