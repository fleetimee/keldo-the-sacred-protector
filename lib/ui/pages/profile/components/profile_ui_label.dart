import 'package:flutter/material.dart';

class ProfileLabel extends StatelessWidget {
  const ProfileLabel({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name.toUpperCase(),
      style: TextStyle(
        fontSize: MediaQuery.of(context).size.width / 24,
        fontWeight: FontWeight.bold,
        color: Colors.black54,
        letterSpacing: 0.8,
      ),
    );
  }
}
