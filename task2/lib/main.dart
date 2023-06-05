import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My second task",
    home: Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              color: Colors.blue.shade900,
              width: 15,
            ),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.black, width: 10),
                ),
                height: 55,
                margin: const EdgeInsets.all(8),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.black, width: 10),
                ),
                height: 55,
                margin: const EdgeInsets.all(8),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.black, width: 10),
                ),
                height: 55,
                margin: const EdgeInsets.all(8),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.black, width: 10),
                ),
                height: 55,
                margin: const EdgeInsets.all(8),
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
