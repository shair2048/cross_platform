import 'package:cross_platform/labs/lab01.dart';
import 'package:cross_platform/labs/lab02.dart';
import 'package:cross_platform/labs/lab03.dart';
import 'package:cross_platform/labs/lab04.dart';
import 'package:cross_platform/labs/lab05.dart';
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
          ListTile(
            title: const Text("Lab02: Mi card"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Lab02()),
              );
            },
          ),
          ListTile(
            title: const Text("Lab03: Dicee"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Lab03()),
              );
            },
          ),
          ListTile(
            title: const Text("Lab04: Magic 8 Ball"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Lab04()),
              );
            },
          ),
          ListTile(
            title: const Text("Lab05: Xylophone"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Lab05()),
              );
            },
          ),
        ],
      ),
    );
  }
}
