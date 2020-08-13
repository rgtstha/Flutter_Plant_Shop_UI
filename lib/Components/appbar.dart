import 'package:flutter/material.dart';

AppBar myAppBar(Color backColor, IconData icon) {
  return AppBar(
    backgroundColor: backColor,
    elevation: 0,
    leading: Icon(
      Icons.dehaze,
      color: Color(0xffBFC1C3),
      size: 30.0,
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Icon(
          icon,
          color: Color(0xffBFC1C3),
          size: 30.0,
        ),
      ),
    ],
  );
}
