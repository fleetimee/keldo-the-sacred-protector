import 'package:flutter/material.dart';

class QuizListOfQuestion extends StatelessWidget {
  const QuizListOfQuestion({
    super.key,
    required this.question,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height / 16,
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Text(
            question,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 20,
              color: Colors.black,
              height: 1.3,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
