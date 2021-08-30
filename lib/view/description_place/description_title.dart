import 'package:flutter/material.dart';
import 'package:platzi_trips_app/view/base/stars.dart';

class DescriptionTitle extends StatelessWidget {
  String placeName;
  double starsQuantity;

  DescriptionTitle(this.placeName, this.starsQuantity);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
            bottom: 16.0,
          ),
          child: Text(
            placeName,
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 323.0,
            bottom: 16.0,
          ),
          child: Stars(starsQuantity, 24.0),
        ),
      ],
    );
  }
}
