import 'package:fleetime_quiz/common/constant/string_constant.dart';
import 'package:fleetime_quiz/ui/pages/quiz/components/quiz_ui_answer.dart';
import 'package:fleetime_quiz/ui/pages/quiz/components/quiz_ui_button.dart';
import 'package:fleetime_quiz/ui/pages/quiz/components/quiz_ui_content.dart';
import 'package:fleetime_quiz/ui/pages/quiz/components/quiz_ui_image.dart';
import 'package:fleetime_quiz/ui/pages/quiz/components/quiz_ui_list_of_question.dart';
import 'package:fleetime_quiz/ui/pages/quiz/components/quiz_ui_title.dart';
import 'package:fleetime_quiz/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class QuizTypeOnePage extends StatelessWidget {
  const QuizTypeOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBarDefault(
        title: 'Quiz',
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.75,
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const QuizImage(
                      imgPath: 'assets/images/quiz_placeholder.jpg',
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 24,
                    ),
                    const QuizTitle(
                      title: StringConstant.quizContentTitle,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 36,
                    ),
                    const QuizContent(
                      title: StringConstant.quizContent,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 24,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const QuizAnswer(
            quizAnswerTitle: StringConstant.quizTitle,
            quizAnswerProgress: StringConstant.quizContentProgress,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 36,
          ),
          const QuizListOfQuestion(
            question: StringConstant.quizAnswer,
          ),
        ],
      ),
      bottomNavigationBar: QuizBottomNavbar(
        quizOnPressedYes: () {},
        quizOnPressedNo: () {},
      ),
    );
  }
}
