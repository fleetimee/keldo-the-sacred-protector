import 'package:flutter/material.dart';

class AppBarDefault extends AppBar {
  AppBarDefault({
    Key? key,
    required String title,
    List<Widget>? actions,
  }) : super(
          key: key,
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              letterSpacing: 0.5,
            ),
          ),
          actions: actions,
        );
}
