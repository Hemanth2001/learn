import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  var answer;

  Answer(this.selectHandler,this.answer);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:ElevatedButton(
        onPressed:selectHandler,
        child: Text(answer,
      textAlign:
      TextAlign.center,),
     ),
    );
  }
}
