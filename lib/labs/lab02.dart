import 'package:flutter/material.dart';

class Lab02 extends StatelessWidget {
  const Lab02({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/im-rich.jpg'),
            ),
            SizedBox(height: 20),

            Text(
              'Nguyen Son Hai',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            // Email
            Text(
              'hains.21it@vku.udn.vn',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      )),
    );
  }
}
