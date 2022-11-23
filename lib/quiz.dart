import 'package:flutter/material.dart';
import 'package:learn/Question.dart';
import 'package:learn/answer.dart';
import 'package:learn/main.dart';


class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int question_no;
  final VoidCallback answer;

  Quiz({ required this.question, required this.question_no, required this
      .answer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[question_no]['Question'].toString(),
        ),

    ...(question[question_no]['Answer'] as List<Map<String,Object>>).map(
            (ans) {
    return Answer(()=> answer(),ans['text']);
    }).toList(),
    ],
    );

  }
}
