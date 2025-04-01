import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalGrade;

  const Result({
    super.key,
    required this.totalGrade,
  });

  String get resultPhrase {
    if (totalGrade <= 8) {
      return 'Você é uma pessoa muito legal!';
    } else if (totalGrade <= 12) {
      return 'Você é uma pessoa legal!';
    } else if (totalGrade <= 16) {
      return 'Você é uma pessoa interessante!';
    } else {
      return 'Você é uma pessoa incrível!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      resultPhrase,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }
}
