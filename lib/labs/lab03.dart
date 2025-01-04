import 'dart:math';

import 'package:flutter/material.dart';

class Lab03 extends StatefulWidget {
  const Lab03({super.key});

  @override
  State<Lab03> createState() => _Lab03();
}

class _Lab03 extends State<Lab03> {
  int leftDiceNumber = 1, rightDiceNumber = 1;
  void changeDice(bool side) {
    setState(() {
      if (side == true) {
        leftDiceNumber = Random().nextInt(6) + 1;
      } else {
        rightDiceNumber = Random().nextInt(6) + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Dicee"),
        centerTitle: true,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: IconButton(
              padding: const EdgeInsets.all(16),
              splashColor: Colors.transparent,
              splashRadius: 0.1,
              onPressed: () {
                changeDice(true);
              },
              icon: Image.asset(
                "assets/images/dice$leftDiceNumber.png",
              ),
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: () {
                changeDice(false);
              },
              padding: const EdgeInsets.all(16),
              splashColor: Colors.transparent,
              splashRadius: 0.1,
              icon: Image.asset(
                'assets/images/dice$rightDiceNumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
