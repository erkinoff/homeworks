import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Exercise 2",
    home: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              color: Colors.blue,
            ),
          )
        ],
      ),
    ),
  ));
}
