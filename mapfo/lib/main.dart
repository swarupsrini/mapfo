import 'package:flutter/material.dart';
import 'MyBottomNavBar.dart';
import 'HomePage.dart';
import 'MapPage.dart';
import 'UserPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget currentPage = HomePage();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          extendBody: true,
          backgroundColor: Color.fromRGBO(53, 71, 107, 1.0),
          body: currentPage,
          bottomNavigationBar: MyBottomNavBar(
            onHomeClick: () {
              setState(() {
                currentPage = HomePage();
              });
            },
            onMapClick: () {
              setState(() {
                currentPage = MapPage();
              });
            },
            onUserClick: () {
              setState(() {
                currentPage = UserPage();
              });
            },
          ),
        ),
      ),
    );
  }
}
