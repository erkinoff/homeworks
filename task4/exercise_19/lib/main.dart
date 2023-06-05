import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  MyContainer(flexValue: 3),
                  Expanded(
                    child: Column(
                      children: [
                        MyContainer(),
                        MyContainer(flexValue: 2),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        MyContainer(flexValue: 2),
                        MyContainer(),
                      ],
                    ),
                  ),
                  MyContainer(flexValue: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}

class MyContainer extends StatelessWidget {
  final int flexValue;
  const MyContainer({super.key, this.flexValue = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flexValue,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10, right: 10),
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
      ),
    );
  }
}
