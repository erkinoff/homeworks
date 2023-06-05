import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Ecercise 17",
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Column(
            children: [
              MyRow(repeat: 2),
              MyRow(),
              MyRow(repeat: 2),
            ],
          ),
        ),
      ),
    ),
  );
}

class MyRow extends StatelessWidget {
  final int repeat;

  const MyRow({super.key, this.repeat = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          for (int i = 0; i < repeat; i++) const MyContainer(),
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
