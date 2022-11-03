import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  //const Myapp({Key? key}) : super(key: key);
  int question_no=0;
  void answer()
  {
    print(question_no=question_no+1);

  }
  @override
  Widget build(BuildContext context) {
    var question=['What is your name','What is your height',];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text("Quiz")
        ),
        body:Column(children:[
          Text(question[question_no]),
          ElevatedButton(
            child:
              Text("ans"),

              onPressed: answer,
          ),
          ElevatedButton(onPressed: (){}, child: null,),
          ElevatedButton(onPressed: (){},child: null,),

        ],)
      ),
    );
  }
}
