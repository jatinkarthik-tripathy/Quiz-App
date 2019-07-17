import 'package:flutter/material.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  var questionIndex = 0;
  final questions = [
    {
      'quesText': 'What dya think?',
      'ansText': ['yes', 'no'],
    },
    {
      'quesText': 'Can it be ...',
      'ansText': ['true', 'false', 'both'],
    },
    {
      'quesText': 'Hmmmmmmm?',
      'ansText': ['tit', 'tat', 'monkey'],
    },
  ];
  void answerQuestion() {
    if (questionIndex <= questions.length) {
      setState(() {
        questionIndex = questionIndex + 1;
      });
    }
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Quiz App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: questionIndex,
                answerQuestion: answerQuestion,
              )
            : Column(
                children: <Widget>[
                  Text(
                    'Congrats! You wasted your time',
                    style: TextStyle(fontSize: 26, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  FlatButton(
                    child: Text(
                      'Restart Quiz',
                      style: TextStyle(fontSize: 26, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: resetQuiz,
                  ),
                ],
              ),
      ),
    );
  }
}
