import 'package:cross_platform/labs/lab01.dart';
import 'package:flutter/material.dart';

class ListLabs extends StatelessWidget {
  const ListLabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Labs")),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Lab01: I'm Rich"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Lab01()),
              );
            },
          ),
        ],
      ),
    );
  }
}
