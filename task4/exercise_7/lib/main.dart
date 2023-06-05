import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Exercise 7",
      home: Scaffold(
        body: Column(
          children: [
            MyRow(),
            MyRow(),
            MyRow(),
          ],
        ),
      ),
    ),
  );
}

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              margin: const EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}
