import 'package:flutter/material.dart';
import 'package:project_questions/answer.dart';
import 'package:project_questions/question.dart';

class Quiz extends StatelessWidget {
  final int questionSelect;
  final void Function(int) onSelected;
  final List<Map<String, Object>> questions;

  const Quiz({
    super.key,
    required this.questions,
    required this.onSelected,
    required this.questionSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question: questions[questionSelect]['text'] as String),
        ...(questions[questionSelect]['answers'] as List<Map<String, Object>>)
            .map((answer) => AnswerButton(
                  answer: answer['text'].toString(),
                  onSelected: () => onSelected(answer['grade'] as int),
                ))
      ],
    );
  }
}
