import 'package:platzi_trips_app/domain/data/review_data.dart';

class DescriptionPlaceData {
  final String placeName;
  final double score;
  final String description;
  final List<ReviewData> reviews;

//<editor-fold desc="Data Methods">

  const DescriptionPlaceData({
    required this.placeName,
    required this.score,
    required this.description,
    required this.reviews,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DescriptionPlaceData &&
          runtimeType == other.runtimeType &&
          placeName == other.placeName &&
          score == other.score &&
          description == other.description &&
          reviews == other.reviews);

  @override
  int get hashCode =>
      placeName.hashCode ^
      score.hashCode ^
      description.hashCode ^
      reviews.hashCode;

  @override
  String toString() {
    return 'DescriptionPlaceData{' +
        ' placeName: $placeName,' +
        ' score: $score,' +
        ' description: $description,' +
        ' reviews: $reviews,' +
        '}';
  }

  DescriptionPlaceData copyWith({
    String? placeName,
    double? score,
    String? description,
    List<ReviewData>? reviews,
  }) {
    return DescriptionPlaceData(
      placeName: placeName ?? this.placeName,
      score: score ?? this.score,
      description: description ?? this.description,
      reviews: reviews ?? this.reviews,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'placeName': this.placeName,
      'score': this.score,
      'description': this.description,
      'reviews': this.reviews,
    };
  }

  factory DescriptionPlaceData.fromMap(Map<String, dynamic> map) {
    return DescriptionPlaceData(
      placeName: map['placeName'] as String,
      score: map['score'] as double,
      description: map['description'] as String,
      reviews: map['reviews'] as List<ReviewData>,
    );
  }

//</editor-fold>
}