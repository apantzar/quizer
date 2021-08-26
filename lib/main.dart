import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answered');
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
          Text('Question'),
          // ignore: deprecated_member_use
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => print('Answer 2'),
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () => print('Answer 3'),
          ),
          RaisedButton(
              child: Text('Answer 4'), onPressed: () => print('Answer 4')),
        ]),
      ),
    );
  }
}
