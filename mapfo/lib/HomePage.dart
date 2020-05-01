import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SvgPicture.asset('assets/home_design1.svg', color: Color.fromRGBO(239, 185, 134, 1.0)),
        Column(
          children: <Widget>[
            // SvgPicture.asset('assets/mapfo.svg'),
            Container(
              child: AppBar(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                backgroundColor: Colors.white,
                title: TextField(),
                actions: <Widget>[
                  SvgPicture.asset('asserts/search.svg')
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
