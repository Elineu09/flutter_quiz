import 'package:flutter/material.dart';
import 'package:flutter_quiz/button.dart';

const List<Color> colors = [
  Color.fromARGB(255, 97, 25, 221),
  Color.fromARGB(255, 36, 3, 92),
];

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              style: TextStyle(
                color: Color.fromARGB(115, 211, 204, 204),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              'Learn Flutter the fun way!',
            ),
            const SizedBox(
              height: 30,
            ),
            Button(),
          ],
        ),
      ),
    );
  }
}
