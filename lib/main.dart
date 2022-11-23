import 'package:flutter/material.dart';
import 'package:learn/answer.dart';
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
    'Answer':['Ram','sham','kam','Dam']
    },
    {
      'Question':'What is your height',
      'Answer':['5.5','5.2','4.7']
    },
    {
      'Question':'What is your name',
      'Answer':['Ram','sham','kam']
    },
    {
      "Question":'What is your height',
      'Answer':['5.5','5.2','4.7']
    }
  ];

  var question_no=0;
  void answer() {
    print(question.length);
    if (question_no<question.length-1) {
      setState(() {
        question_no = question_no + 1;
      });
      print(question_no);
    }
  }
  //sdfghjk

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text("Quiz")
          ),
          body:Column(children:[
            Question(
                question[question_no]['Question'].toString(),
            ),
            ...(question[question_no]['Answer'] as List<String>).map((ans) {
      return Answer( answer,ans);
    }).toList()



          ],)
      ),
    );

  }
}
