import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platzi_trips_app/view/base/card_image.dart';

class CardCarousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage('res/img/pic1.jpg'),
          CardImage('res/img/pic2.jpg'),
          CardImage('res/img/pic3.jpg'),
          CardImage('res/img/pic4.jpg'),
          CardImage('res/img/pic5.jpg'),
        ],
      ),
    );
  }
}
