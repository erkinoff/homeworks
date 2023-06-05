import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Exercise 8",
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              MyRow(),
              MyRow(),
              MyRow(),
              MyRow(),
            ],
          ),
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
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            ),
          ),
        ],
      ),
    );
  }
}
