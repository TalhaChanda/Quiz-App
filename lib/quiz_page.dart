import 'package:flutter/material.dart';
import 'package:quiz_app/answer_page.dart';
import 'package:quiz_app/question_page.dart';

class QuizPage extends StatelessWidget {
  List<Map<String, Object>>? questions;
  int? questionIndex;
  Function? answerQuestion;

  QuizPage({this.questions, this.answerQuestion, this.questionIndex, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionPage(
          questionText: questions![questionIndex!]["questionText"].toString(),
        ),
        ...(questions![questionIndex!]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return AnswerPage(
              answerText: answer['text'].toString(),
              selectHandler: () {
                answerQuestion!(
                  answer["score"],
                );
              });
        }).toList()
      ],
    );
  }
}
