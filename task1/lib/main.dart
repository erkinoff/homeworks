import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "My 1st task",
      home: Scaffold(
        body: SafeArea(
          child: Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.blue[600],
                border: Border.all(
                  color: Colors.blue.shade900,
                  width: 15,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.black, width: 8),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.black, width: 8),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.black, width: 8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
