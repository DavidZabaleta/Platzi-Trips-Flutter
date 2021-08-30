class ReviewData {
  final String userFullName;
  final String pathProfilePicture;
  final String userReviewHistory;
  final double userReviewScore;
  final String userReviewComment;

  const ReviewData({
    required this.userFullName,
    required this.pathProfilePicture,
    required this.userReviewHistory,
    required this.userReviewScore,
    required this.userReviewComment,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReviewData &&
          runtimeType == other.runtimeType &&
          userFullName == other.userFullName &&
          pathProfilePicture == other.pathProfilePicture &&
          userReviewHistory == other.userReviewHistory &&
          userReviewScore == other.userReviewScore &&
          userReviewComment == other.userReviewComment);

  @override
  int get hashCode =>
      userFullName.hashCode ^
      pathProfilePicture.hashCode ^
      userReviewHistory.hashCode ^
      userReviewScore.hashCode ^
      userReviewComment.hashCode;

  @override
  String toString() {
    return 'ReviewData{' +
        ' userFullName: $userFullName,' +
        ' pathProfilePicture: $pathProfilePicture,' +
        ' userReviewHistory: $userReviewHistory,' +
        ' userReviewScore: $userReviewScore,' +
        ' userReviewComment: $userReviewComment,' +
        '}';
  }

  ReviewData copyWith({
    String? userFullName,
    String? pathProfilePicture,
    String? userReviewHistory,
    double? userReviewScore,
    String? userReviewComment,
  }) {
    return ReviewData(
      userFullName: userFullName ?? this.userFullName,
      pathProfilePicture: pathProfilePicture ?? this.pathProfilePicture,
      userReviewHistory: userReviewHistory ?? this.userReviewHistory,
      userReviewScore: userReviewScore ?? this.userReviewScore,
      userReviewComment: userReviewComment ?? this.userReviewComment,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userFullName': this.userFullName,
      'pathProfilePicture': this.pathProfilePicture,
      'userReviewHistory': this.userReviewHistory,
      'userReviewScore': this.userReviewScore,
      'userReviewComment': this.userReviewComment,
    };
  }

  factory ReviewData.fromMap(Map<String, dynamic> map) {
    return ReviewData(
      userFullName: map['userFullName'] as String,
      pathProfilePicture: map['pathProfilePicture'] as String,
      userReviewHistory: map['userReviewHistory'] as String,
      userReviewScore: map['userReviewScore'] as double,
      userReviewComment: map['userReviewComment'] as String,
    );
  }
}