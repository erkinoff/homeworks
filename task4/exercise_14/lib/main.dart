import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Exercise 13",
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    MyContainer(),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    MyContainer(),
                    MyContainer(),
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
