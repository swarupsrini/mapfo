import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'SearchBarRow.dart';
import 'MapfoRow.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 137,
              child: AspectRatio(
                aspectRatio: 17 / 16,
                child: SvgPicture.asset(
                  'assets/home_design1.svg',
                  color: Color.fromRGBO(239, 185, 134, 1.0),
                ),
              ),
            ),
            Spacer(flex: 223)
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(17.0, 23.0, 17.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MapfoRow(),
              Container(
                transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                child: SearchBarRow(),
              ),
              SizedBox(height: 51.0),
              Expanded(
                flex: 1,
                child: ListView(
                  padding: EdgeInsets.all(8),
                  children: <Widget>[
                    Text(
                      'FOOD',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'RedHatDisplay',
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 100.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
