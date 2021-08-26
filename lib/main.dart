import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex++;

    //testing
   // print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What is your favorite color?',
      'What is your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizer App'),
        ),
        body: Column(children: <Widget>[
          Text(question[questionIndex]),
          // ignore: deprecated_member_use
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => print('Answer 2'),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () => print('Answer 3'),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
              child: Text('Answer 4'), onPressed: () => print('Answer 4')),
        ]),
      ),
    );
  }
}
