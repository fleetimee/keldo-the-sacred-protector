import 'package:flutter/material.dart';

class QuizBottomNavbar extends StatelessWidget {
  const QuizBottomNavbar({
    super.key,
    this.quizOnPressedYes,
    this.quizOnPressedNo,
  });

  final void Function()? quizOnPressedYes;
  final void Function()? quizOnPressedNo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 11,
        vertical: MediaQuery.of(context).size.height / 52,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade900,
                  Colors.blue.shade700,
                  //add more colors
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ElevatedButton(
              onPressed: quizOnPressedYes,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                disabledForegroundColor: Colors.transparent.withOpacity(0.38),
                disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(
                  MediaQuery.of(context).size.width / 1.2,
                  MediaQuery.of(context).size.height / 15,
                ),
              ),
              child: Text(
                'Ya',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 48,
          ),
          ElevatedButton(
            onPressed: quizOnPressedNo,
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                width: 2.5,
                color: Colors.blue.shade700,
              ),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: Size(
                MediaQuery.of(context).size.width / 1.2,
                MediaQuery.of(context).size.height / 15,
              ),
            ),
            child: Text(
              'Tidak',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 24,
                color: Colors.blue.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
