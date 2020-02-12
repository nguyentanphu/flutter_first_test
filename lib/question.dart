import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;
  Question(String question): _question = question;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          _question,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
