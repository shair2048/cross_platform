import 'dart:math';

import 'package:flutter/material.dart';

class Lab04 extends StatefulWidget {
  const Lab04({super.key});

  @override
  State<Lab04> createState() => _Lab04();
}

class _Lab04 extends State<Lab04> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      ballNumber = Random().nextInt(4) + 1;
                    });
                  },
                  child: Image.asset('images/ball$ballNumber.png')),
            ),
          ],
        ),
      ),
    );
  }
}
