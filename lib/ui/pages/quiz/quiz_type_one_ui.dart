import 'package:fleetime_quiz/common/constant/string_constant.dart';
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
        children: [
          const QuizImage(
            imgPath: 'assets/images/quiz_placeholder.jpg',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 24,
          ),
          Center(
            child: Text(
              StringConstant.quizContentTitle,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 36,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 5,
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Text(
                  StringConstant.quizContent,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 24,
                    color: Colors.black,
                    height: 1.3,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 36,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  StringConstant.quizTitle,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  StringConstant.quizContentProgress,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
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
