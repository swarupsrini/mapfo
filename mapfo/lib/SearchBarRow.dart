import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          flex: 176,
          child: AspectRatio(
            aspectRatio: 22 / 3,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(251, 238, 255, 1.0),
                  width: 1.0,
                ),
                color: Color.fromRGBO(255, 255, 255, 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10.0),
                  Expanded(
                    flex: 149,
                    child: TextField(
                      showCursor: true,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(border: InputBorder.none),
                      cursorColor: Color.fromRGBO(153, 135, 157, 1.0),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: SvgPicture.asset(
                      'assets/search.svg',
                      color: Color.fromRGBO(153, 135, 157, 1.0),
                    ),
                  ),
                  SizedBox(width: 10.0),
                ],
              ),
            ),
          ),
        ),
        Spacer(flex: 153),
      ],
    );
  }
}
