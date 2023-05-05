import 'package:flutter/material.dart';

class QuizImage extends StatelessWidget {
  const QuizImage({
    super.key,
    required this.imgPath,
  });

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: MediaQuery.of(context).size.height / 4.2,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imgPath,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
