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
  Widget currentPage = Container();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBody: true,
        backgroundColor: Color.fromRGBO(53, 71, 107, 1.0),
        // backgroundColor: Color.fromRGBO(239, 185, 134, 1.0),
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
    );
  }
}
