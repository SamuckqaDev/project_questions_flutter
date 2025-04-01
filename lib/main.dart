import 'package:flutter/material.dart';
import 'package:project_questions/quiz.dart';
import 'package:project_questions/result.dart';

main() => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  int _questionSelected = 0;
  int _totalGrade = 0;

  final List<Map<String, Object>> _questions = [
    {
      "text": "What is your favorite color?",
      "answers": [
        {"text": "Red", "grade": 10},
        {"text": "Blue", "grade": 5},
        {"text": "Green", "grade": 3},
        {"text": "Yellow", "grade": 8},
        {"text": "Black", "grade": 1},
      ]
    },
    {
      "text": "What is your favorite animal?",
      "answers": [
        {"text": "dog", "grade": 10},
        {"text": "cat", "grade": 5},
        {"text": "bird", "grade": 3},
        {"text": "fish", "grade": 8},
        {"text": "lizard", "grade": 1},
      ]
    },
    {
      "text": "What is your favorite food?",
      "answers": [
        {"text": "Pizza", "grade": 10},
        {"text": "Burger", "grade": 5},
        {"text": "Pasta", "grade": 3},
        {"text": "Salad", "grade": 8},
        {"text": "Sushi", "grade": 1},
      ]
    },
    {
      "text": "What is your favorite sport?",
      "answers": [
        {"text": "Soccer", "grade": 10},
        {"text": "Basketball", "grade": 5},
        {"text": "Tennis", "grade": 3},
        {"text": "Baseball", "grade": 8},
        {"text": "Golf", "grade": 1},
      ]
    }
  ];

  void _answerQuestion(int grade) {
    setState(() {
      _questionSelected++;
      _totalGrade += grade;
    });
    print(_totalGrade);
  }

  void reloadQuiz() {
    setState(() {
      _questionSelected = 0;
      _totalGrade = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Question App with Flutter"),
            backgroundColor: Colors.blue,
            centerTitle: true,
            titleTextStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          body: _questionSelected < _questions.length
              ? Center(
                  child: Quiz(
                  questions: _questions,
                  questionSelect: _questionSelected,
                  onSelected: _answerQuestion,
                ))
              : Center(
                  child: Result(
                  totalGrade: _totalGrade,
                  onReload: reloadQuiz,
                ))),
    );
  }
}

class QuestionApp extends StatefulWidget {
  const QuestionApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionAppState();
  }
}
