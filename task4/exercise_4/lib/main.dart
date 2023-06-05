import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Ecercise 4",
    home: Scaffold(
      body: Row(
        children: [
          MyColumn(),
          MyColumn(),
          MyColumn(),
        ],
      ),
    ),
  ));
}

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
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
