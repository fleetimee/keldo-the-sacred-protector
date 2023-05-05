import 'package:fleetime_quiz/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class QuizTypeOnePage extends StatelessWidget {
  const QuizTypeOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDefault(
        title: 'Quiz',
      ),
      body: Column(
        children: const [
          QuizImage(
            imgPath: 'assets/images/quiz_placeholder.jpg',
          ),
        ],
      ),
    );
  }
}

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
