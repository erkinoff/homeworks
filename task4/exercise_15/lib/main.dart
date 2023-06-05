import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Exercise 13",
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Column(
            children: [
              const Expanded(
                flex: 4,
                child: Row(
                  children: [
                    MyContainer(),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    for (int i = 0; i < 4; i++) const MyContainer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
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
