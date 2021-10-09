import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;
  List<Icon> answerReply = [];
  List<String> answers = [
    'false',
    'true',
    'false',
    'true',
    'true',
    'false',
    'false',
    'true',
    'false',
    'true',
    'true',
    'true',
  ];
  List<String> questions = [
    '1.C programs are converted into machine language with the help of a program called Editor.',
    '2.A zero value is considered to be false and a non-zero value is considered to be true.',
    '3.Spaces and commas are allowed in a variable name.',
    '4.The maximum value that an integer constant can have varies from one compiler to another.',
    '5.A real constant in C can be expressed in both Fractional and Exponential forms.',
    '6.Only character or integer can be used in switch statement',
    '7.Algorithm is the graphical representation of logic.',
    '8.The ++ operator increments the operand by 1, whereas, the -- operator decrements it by 1.',
    '9.= is used for comparison, whereas, == is used for assignment of two quantities.',
    '10.The keywords cannot be used as variable names.',
    '11.Switch statement can have any number of case instances',
    '12.A do-while loop is used to ensure that the statements within the loop are executed at least once.'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('QUIZZELER'))),
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 6,
                  child: Center(
                    child: Text(
                      questions[num],
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          if (answers[num] == 'true') {
                            answerReply.add(Icon(Icons.check, color: Colors.green));
                          } else {
                            answerReply.add(Icon(Icons.close, color: Colors.red));
                          }
                        });
                        num++;
                        if (num > 11) {
                          num = 0;
                          answerReply.clear();
                        }
                      },
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          'True',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          if (answers[num] == 'false') {
                            answerReply.add(Icon(Icons.check, color: Colors.green));
                          } else {
                            answerReply.add(Icon(Icons.close, color: Colors.red));
                          }
                        });
                        num++;
                        if (num > 11) {
                          num = 0;
                          answerReply.clear();
                        }
                      },
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'False',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(children: answerReply)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
