import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Exercise 18",
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Row(
            children: [
              MyColumn(),
              MyColumn(reverse: true),
            ],
          ),
        ),
      ),
    ),
  );
}

class MyColumn extends StatelessWidget {
  final bool reverse;

  const MyColumn({super.key, this.reverse = false});

  @override
  Widget build(BuildContext context) {
    int first = reverse ? 1 : 2;
    int second = first == 1 ? 2 : 1;
    return Expanded(
      child: Column(
        children: [
          MyContainer(
            flexvalue: first,
          ),
          MyContainer(
            flexvalue: second,
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final int flexvalue;

  const MyContainer({super.key, required this.flexvalue});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flexvalue,
      child: Container(
        color: Colors.blue,
        margin: const EdgeInsets.only(right: 10, bottom: 10),
      ),
    );
  }
}
