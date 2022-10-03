import 'package:flutter/material.dart';

class QuestionPage extends StatelessWidget {
  String? questionText;
  QuestionPage({this.questionText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(
        10,
      ),
      child: Text(
        '$questionText',
        style: const TextStyle(
          fontSize: 23,
        ),
      ),
    );
  }
}
