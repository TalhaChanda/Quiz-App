import 'package:flutter/material.dart';

class AnswerPage extends StatelessWidget {
  String? answerText;
  VoidCallback? selectHandler;

  AnswerPage({this.answerText, this.selectHandler, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(onPressed: selectHandler, child: Text("$answerText")),
    );
  }
}
