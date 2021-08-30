import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platzi_trips_app/domain/data/review_data.dart';
import 'package:platzi_trips_app/view/base/profile_picture.dart';
import 'package:platzi_trips_app/view/base/stars.dart';

class Review extends StatelessWidget {
  ReviewData _reviewData;

  Review(this._reviewData);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfilePicture(80.0, _reviewData.pathProfilePicture),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _reviewData.userFullName,
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Row(
              children: [
                Text(
                  _reviewData.userReviewHistory,
                  style: TextStyle(
                    fontFamily: 'Lato',
                    color: Color(0xFFa3a5a7),
                    fontSize: 13.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 12.0,
                  ),
                  child: Stars(_reviewData.userReviewScore, 16.0),
                ),
              ],
            ),
            Text(
              _reviewData.userReviewComment,
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 16.0,
              ),
            ),
          ],
        )
      ],
    );
  }
}
