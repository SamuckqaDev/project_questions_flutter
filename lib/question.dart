import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;

  const Question({super.key, required String question}) : _question = question;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        _question,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
