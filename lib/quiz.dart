import 'package:flutter/material.dart';

import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final questionIndex;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionIndex]['quesText']),
        ...(questions[questionIndex]['ansText'] as List<String>).map((ans) {
          return Answer(answerQuestion, ans);
        }).toList()
      ],
    );
  }
}
