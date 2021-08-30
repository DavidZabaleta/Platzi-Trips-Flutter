import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {

  double widthProfilePicture;
  String pathProfilePicture;

  ProfilePicture(this.widthProfilePicture, this.pathProfilePicture);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      height: widthProfilePicture,
      width: widthProfilePicture,
      child: CircleAvatar(
        backgroundImage: AssetImage(pathProfilePicture),
      ),
    );
  }
}
