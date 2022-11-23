import 'package:flutter/material.dart';
import 'package:learn/answer.dart';
import 'package:learn/quiz.dart';
import 'package:learn/result.dart';
import 'Question.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var question=[
    {
      'Question':'What is your name',
    'Answer':[
      {'text':'Ram','score':10},
      {'text':'sham','score':5},
      {'text':'kam','score':2},
      {'text':'Dam','score':8}]
    },
    {
      'Question':'What is your height',
      'Answer':[
        {'text':'5.5','score':10},
        {'text':'5.2','score':5},
       {'text':'4.7','score':2}]
    },
    {
      'Question':'What is your name',
      'Answer':[
        {'text':'Ram','score':10},
        {'text':'sham','score':5},
        {'text':'kam','score':2},
        {'text':'Dam','score':8}]
    },
    {
      'Question':'What is your height',
      'Answer':[
        {'text':'5.5','score':10},
        {'text':'5.2','score':5},
        {'text':'4.7','score':2}]
    },
  ];

  var question_no=0;
  var total_score=0;
  int score=0;
  void _answer() {
   // total_score+=score;
    print(question.length);
  //  if (question_no<question.length-1) {
      setState(() {
        question_no = question_no + 1;
      });
      print(question_no);
 //   }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text("Quiz")
          ),
          body:    (question_no<question.length)?Column(children:[
            Quiz(question: question,question_no: question_no,answer: _answer,)

    ],): Result()
      ),
    );

  }
}
