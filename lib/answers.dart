import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function quesHandler;
  final String ansText;

  Answer(this.quesHandler, this.ansText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.teal,
        child: Text(ansText),
        onPressed: quesHandler,
      ),
    );
  }
}
