import 'package:flutter/material.dart';

class Trends extends StatelessWidget {
  final String hashTag;
  Trends({this.hashTag = "HashTag"});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Text(
        hashTag,
        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
      ),
    );
  }
}
