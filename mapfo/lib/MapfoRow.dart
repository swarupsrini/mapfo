import 'package:flutter/material.dart';

class MapfoRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Image.asset('assets/mapfo.png'),
        ),
        Spacer(flex: 2),
      ],
    );
  }
}
