import 'package:flutter/material.dart';
import 'package:platzi_trips_app/domain/data/description_place_data.dart';
import 'package:platzi_trips_app/view/base/button_purple.dart';
import 'package:platzi_trips_app/view/description_place/description_header.dart';
import 'package:platzi_trips_app/view/description_place/gradient_back.dart';
import 'package:platzi_trips_app/view/review/review.dart';
import 'description_title.dart';
import 'description_body.dart';

class DescriptionPlace extends StatelessWidget {
  DescriptionPlaceData _descriptionPlaceData;

  DescriptionPlace(this._descriptionPlaceData);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionTitle(
              _descriptionPlaceData.placeName,
              _descriptionPlaceData.score,
            ),
            DescriptionBody(_descriptionPlaceData.description),
            ButtonPurple('Navigate'),
            Column(
              children: [
                ..._descriptionPlaceData.reviews
                    .map((review) => Review(review))
                    .toList()
              ],
            )
          ],
        ),
        DescriptionHeader(),
      ],
    );
  }
}
