import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String quesText;
  Questions(this.quesText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
  
      child: Text(
        quesText,
        style: TextStyle(fontSize: 26, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
