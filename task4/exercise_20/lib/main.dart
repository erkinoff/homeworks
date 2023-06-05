import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Exercise 20",
      home: Padding(
        padding: EdgeInsets.only(top: 10, left: 10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        MyContainer(flexvalue: 2),
                        Expanded(
                          child: Row(
                            children: [
                              MyContainer(flexvalue: 1),
                              MyContainer(flexvalue: 1),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              MyContainer(flexvalue: 1),
                              MyContainer(flexvalue: 2),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              MyContainer(flexvalue: 1),
                              MyContainer(flexvalue: 1),
                              MyContainer(flexvalue: 1),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    MyContainer(flexvalue: 2),
                                    MyContainer(flexvalue: 1),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    MyContainer(flexvalue: 1),
                                    MyContainer(flexvalue: 1),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    MyContainer(flexvalue: 1),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        MyContainer(flexvalue: 2),
                        MyContainer(flexvalue: 1),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
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
