import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/view/base/card_carousel.dart';
import 'package:platzi_trips_app/view/description_place/gradient_back.dart';

class DescriptionHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack('Popular'),
        CardCarousel(),
      ],
    );
  }
}
