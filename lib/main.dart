import 'package:flutter/material.dart';
import '';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int question_no=0;
  void answer()
  {
    setState((){
      question_no=question_no+1;
    });
    print(question_no);

  }
  var question=['What is your name','What is your height',];
  @override
  Widget build(BuildContext context) {
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
