import 'package:flutter/material.dart';

class Lab01 extends StatelessWidget {
  const Lab01({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Im Rich",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 500,
              height: 500,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Image(
                  image: AssetImage("assets/images/im-rich.jpg"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
