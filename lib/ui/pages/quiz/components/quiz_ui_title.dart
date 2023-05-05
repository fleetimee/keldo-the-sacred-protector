import 'package:flutter/material.dart';

class QuizTitle extends StatelessWidget {
  const QuizTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width / 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
