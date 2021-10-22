import 'package:flutter/material.dart';
import 'package:task3/Screens/profile/profile.dart';
import 'profile_pic.dart';

class CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: GestureDetector(
        onTap: (){Navigator.of(context).pushNamed(Profile.routename);},
        child: ProfilePic()),
    );
  }
}
