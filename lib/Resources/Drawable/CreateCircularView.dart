
import 'package:flutter/material.dart';

class CircularView {
  Widget createCircularView(String calenderIcon) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      child: Image.asset(calenderIcon),
    );
  }
}