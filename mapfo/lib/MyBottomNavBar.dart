import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNavBar extends StatelessWidget {
  final VoidCallback onHomeClick;
  final VoidCallback onMapClick;
  final VoidCallback onUserClick;

  MyBottomNavBar({
    @required this.onHomeClick,
    @required this.onMapClick,
    @required this.onUserClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 34.0, horizontal: 16.0),
      child: Container(
        height: 55.0,
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1.0),
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF000000).withOpacity(0.25),
                blurRadius: 3.0,
                spreadRadius: 0.0,
                offset: Offset(0.0, 6.0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                padding: EdgeInsets.all(0.0),
                onPressed: () {
                  onHomeClick();
                },
                child: SvgPicture.asset('assets/home.svg', color: Color.fromRGBO(53, 71, 107, 1.0)),
              ),
              FlatButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                padding: EdgeInsets.all(0.0),
                onPressed: () {
                  onMapClick();
                },
                child: SvgPicture.asset('assets/map.svg', color: Color.fromRGBO(53, 71, 107, 1.0)),
              ),
              FlatButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                padding: EdgeInsets.all(0.0),
                onPressed: () {
                  onUserClick();
                },
                child: SvgPicture.asset('assets/user.svg', color: Color.fromRGBO(53, 71, 107, 1.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
