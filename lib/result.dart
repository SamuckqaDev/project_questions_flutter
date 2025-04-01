import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalGrade;
  final void Function() onReload;

  const Result({
    super.key,
    required this.totalGrade,
    required this.onReload,
  });

  String get resultPhrase {
    if (totalGrade <= 8) {
      return 'Your grade is low!';
    } else if (totalGrade <= 10) {
      return 'You are a nice person!';
    } else if (totalGrade <= 11) {
      return 'You are a good person!';
    } else if (totalGrade <= 12) {
      return 'You are a great person!';
    } else if (totalGrade <= 13) {
      return 'You are an amazing person!';
    } else if (totalGrade <= 14) {
      return 'You are a fantastic person!';
    } else if (totalGrade <= 15) {
      return 'You are a wonderful person!';
    } else {
      return 'You are a perfect person!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        ElevatedButton(
            onPressed: onReload,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(5),
              textStyle: const TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: const Text("Restart Quiz",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ))),
      ],
    );
  }
}
