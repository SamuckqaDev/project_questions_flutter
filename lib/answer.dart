import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String _answer;
  final void Function() onSelected;

  const AnswerButton(
      {super.key, required String answer, required this.onSelected})
      : _answer = answer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ElevatedButton(
        onPressed: onSelected,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(5),
          textStyle: const TextStyle(fontSize: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Text(_answer),
      ),
    );
  }
}
