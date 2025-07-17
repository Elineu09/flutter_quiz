import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 97, 25, 221),
            Color.fromARGB(255, 36, 3, 92),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Text(
          style: TextStyle(
            color: Colors.black45,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          "Learn Flutter the fun way!!",
        ),
      ),
    );
  }
}
