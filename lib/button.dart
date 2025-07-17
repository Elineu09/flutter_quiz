import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(context) {
    return OutlinedButton(
      onPressed: () {},
      child: const Text(
        style: TextStyle(
          color: Color.fromARGB(115, 211, 204, 204),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        'Start Quiz',
      ),
    );
  }
}
