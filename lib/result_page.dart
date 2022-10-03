import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  int? resultScore;
  VoidCallback? resetHandler;
  ResultPage({this.resultScore, this.resetHandler, Key? key}) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore! <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore! <= 12) {
      resultText = "Pretty likeable!";
    } else if (resultScore! <= 16) {
      resultText = "You are ... strange?!";
    } else {
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('$resultPhrase'),
          TextButton(onPressed: resetHandler, child: Text("Restart Quiz!"))
        ],
      ),
    );
  }
}