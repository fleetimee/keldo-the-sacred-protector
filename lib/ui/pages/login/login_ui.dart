import 'package:fleetime_quiz/common/constant/string_constant.dart';
import 'package:fleetime_quiz/ui/pages/login/components/login_ui_google_button.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              StringConstant.firstLine,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 13,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 85,
          ),
          Center(
            child: Text(
              StringConstant.secondLine,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 8,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: LoginGoogleButton(
        onPressed: () {},
      ),
    );
  }
}
