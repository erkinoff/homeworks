import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Exercise 12",
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Row(
            children: [
              for (int i = 0; i < 4; i++) const MyColumn(),
            ],
          ),
        ),
      ),
    ),
  );
}

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          for (int i = 0; i < 6; i++) const MyContainer(),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue,
        margin: const EdgeInsets.only(right: 10, bottom: 10),
      ),
    );
  }
}
