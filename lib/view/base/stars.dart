import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  double starsQuantity;
  double sizeStar;

  Stars(this.starsQuantity, this.sizeStar);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: generateStarsWidgetList(),
    );
  }

  List<Widget> generateStarsWidgetList() {
    final starHalf = Container(
      margin: EdgeInsets.only(
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        size: sizeStar,
        color: Color(0xFFf2C611),
      ),
    );

    final starBorder = Container(
      margin: EdgeInsets.only(
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        size: sizeStar,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        size: sizeStar,
        color: Color(0xFFf2C611),
      ),
    );

    return buildStarsWidgetList(star, starHalf, starBorder);
  }

  List<Widget> buildStarsWidgetList(Widget star, Widget starHalf, Widget starBorder) {
    final List<Widget> starsList = List.generate(5, (index) => starBorder);
    final double starsQuantityReminder = this.starsQuantity % 1;

    for (int i = 0; i <= this.starsQuantity - 1; i++) {
      starsList[i] = star;
    }

    if (starsQuantityReminder >= 0.5) {
      starsList[this.starsQuantity.floor()] = starHalf;
    }

    return starsList;
  }
}
