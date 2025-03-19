import 'package:cross_platform/quiz_brain.dart';
import 'package:flutter/material.dart';

QuizBrain quizBrain = QuizBrain();

class Lab06 extends StatefulWidget {
  const Lab06({super.key});

  @override
  State<Lab06> createState() => _Lab06();
}

class _Lab06 extends State<Lab06> {
  List<Widget> scoreKeeper = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        quizBrain.getQuestionText(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: const Text(
                        'True',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        quizBrain.getCorrectAnswer();
                        setState(() {
                          scoreKeeper.add(
                            const Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                          );
                          quizBrain.nextQuestion();
                        });
                        // print(result == true);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Text(
                        'False',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        quizBrain.getCorrectAnswer();

                        setState(() {
                          scoreKeeper.add(
                            const Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                          );
                          quizBrain.nextQuestion();
                        });
                        // print(result == false);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
