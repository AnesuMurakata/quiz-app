import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});

  const GradientContainer.purple({super.key})
      : startColor = Colors.deepPurple,
        endColor = Colors.indigo;

  final Color startColor;
  final Color endColor;

  void startQuiz() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  shadowColor: Colors.black, elevation: 5),
              child: const Text(
                'Start Quiz',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
