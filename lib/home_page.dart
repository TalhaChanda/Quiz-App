import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_page.dart';
import 'package:quiz_app/result_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, Object>> questions = const [
    {
      "questionText": "What's you favourite color?",
      "answers": [
        {
          "text": "Black",
          "score": 10,
        },
        {
          "text": "Red",
          "score": 5,
        },
        {
          "text": "Green",
          "score": 3,
        },
        {
          "text": "White",
          "score": 1,
        }
      ]
    },
    {
      "questionText": "What's you favourite animal?",
      "answers": [
        {
          "text": "Rabbit",
          "score": 3,
        },
        {
          "text": "Snack",
          "score": 11,
        },
        {
          "text": "Elephant",
          "score": 5,
        },
        {
          "text": "Lion",
          "score": 9,
        }
      ]
    },
    {
      "questionText": "What's you favourite instructor?",
      "answers": [
        {
          "text": "Max",
          "score": 1,
        },
        {
          "text": "Max",
          "score": 1,
        },
        {
          "text": "Max",
          "score": 1,
        },
        {
          "text": "Max",
          "score": 1,
        }
      ]
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;

  resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    if (questionIndex < questions.length) {
      print("We have more questions");
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: questionIndex < questions.length
          ? QuizPage(
              questions: questions,
              questionIndex: questionIndex,
              answerQuestion: answerQuestion,
            )
          : ResultPage(
              resultScore: totalScore,
              resetHandler: resetQuiz,
            ),
    );
  }
}
