import 'package:flutter/material.dart';
import 'package:sinarmas_attendance/home/home_page.dart';
import 'package:sinarmas_attendance/login.dart';
import 'package:sinarmas_attendance/widget/bottom_navigation.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
      ),
      initialRoute: 'login',
      routes: {
        'login': (context) => MyLogin(),
        // 'home': (context) =>  HomePageState(),
        BottomNav.routeName: (context) => BottomNav(),
        //HomePage.id: (context) => HomePage(),
      },
    );
  }
}


