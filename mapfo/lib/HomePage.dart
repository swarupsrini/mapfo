import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SvgPicture.asset('assets/home_design1.svg', color: Color.fromRGBO(239, 185, 134, 1.0)),
        Padding(
          padding: const EdgeInsets.fromLTRB(17.0, 23.0, 17.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Image.asset('assets/mapfo.png'),
                  ),
                  Spacer(flex: 2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    flex: 27,
                    child: AppBar(
                      bottom: null,
                      // flexibleSpace: FlexibleSpace,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      backgroundColor: Colors.white,
                      title: TextField(),
                      actions: <Widget>[
                        SvgPicture.asset(
                          'assets/search.svg',
                          // width: 9.24,
                          // height: 8.97,
                        )
                      ],
                    ),
                  ),
                  Spacer(flex: 23),
                ],
              ),
              // Spacer(flex: 2),
              Text(
                'FOOD',
                style: TextStyle(
                  fontFamily: 'RedHatDisplay',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
