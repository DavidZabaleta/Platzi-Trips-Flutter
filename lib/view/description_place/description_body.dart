import 'package:flutter/material.dart';

class DescriptionBody extends StatelessWidget {
  String placeDescription;

  DescriptionBody(this.placeDescription);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
          maxHeight: 200.0,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Text(
            placeDescription,
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Color(0xFF56575A),
            ),
          ),
        ));
  }
}
