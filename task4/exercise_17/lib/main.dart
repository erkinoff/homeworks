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
              MyRow(),
              MyRow(reverse: true),
              MyRow(),
            ],
          ),
        ),
      ),
    ),
  );
}

class MyRow extends StatelessWidget {
  final bool reverse;

  const MyRow({super.key, this.reverse = false});

  @override
  Widget build(BuildContext context) {
    int first = reverse ? 1 : 4;
    int second = first == 1 ? 4 : 1;
    return Expanded(
      child: Row(
        children: [
          MyContainer(flexValue: first),
          MyContainer(flexValue: second),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final int flexValue;
  const MyContainer({super.key, required this.flexValue});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flexValue,
      child: Container(
        color: Colors.blue,
        margin: const EdgeInsets.only(right: 10, bottom: 10),
      ),
    );
  }
}
