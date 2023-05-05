import 'package:fleetime_quiz/common/constant/string_constant.dart';
import 'package:fleetime_quiz/ui/pages/home/components/home_ui_bottom_button.dart';
import 'package:fleetime_quiz/ui/pages/home/components/home_ui_profile_card.dart';
import 'package:fleetime_quiz/ui/pages/home/components/home_ui_top_button.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      extendBody: true,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: const [0.0, 1.0],
        colors: [
          Colors.blue.shade800,
          Colors.blue.shade500,
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Quiz Care',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const HomeUserProfileCard(
              name: StringConstant.homeName,
              imagePath: 'assets/images/home_avatar.jpg',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            HomeTopButton(
              name: StringConstant.homeHighRisk,
              onPressed: () {},
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            const HomeBottomButton(
              name: StringConstant.homeStartQuiz,
            ),
          ],
        ),
      ),
    );
  }
}
