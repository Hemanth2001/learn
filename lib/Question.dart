import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // Question({Key? key}) : super(key: key);

String question;
 Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        child: Text(question,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,));
  }
}
