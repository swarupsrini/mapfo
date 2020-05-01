import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 34.0, horizontal: 16.0),
      child: Container(
        height: 55.0,
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 251, 251, 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.home),
              Icon(Icons.Location),
              Icon(Icons.account_circle)
            ],
          ),
        ),
      ),
    );
  }
}
