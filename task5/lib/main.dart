import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String> row1 = {
      "FF43CBFF": "FF9708CC",
      "FFF97794": "FF623AA2",
      "FF81FFEF": "FFF067B4",
      "FFF6D242": "FFFF52E5",
    };
    Map<String, String> row2 = {
      "FFF0FF00": "FF58CFFB",
      "FFEECE13": "FFB210FF",
      "FF52E5E7": "FF130CB7",
      "FF92FFC0": "FF002661",
    };
    Map<String, String> row3 = {
      "FFEEAD92": "FF6018DC",
      "FFEE9AE5": "FF5961F9",
      "FFFFCF71": "FF2376DD",
      "FFFDD819": "FFE80505",
    };
    return MaterialApp(
      title: "Gradient App",
      home: Scaffold(
        backgroundColor: Colors.purple[50],
        body: Column(
          children: [
            MyRow(colors: row1),
            MyRow(colors: row2),
            MyRow(colors: row3),
          ],
        ),
      ),
    );
  }
}
class MyCard extends StatelessWidget {
  final MapEntry<String, String> myColors;

  const MyCard({super.key, required this.myColors});

  @override
  Widget build(BuildContext context) {
    String color1 = myColors.key;
    String color2 = myColors.value;
    return Expanded(
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.5),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(int.parse(color1, radix: 16)),
                        Color(int.parse(color2, radix: 16)),
                      ],
                      transform: const GradientRotation(pi / 4),
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(22.5),
                      topRight: Radius.circular(22.5),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22.5),
                      bottomRight: Radius.circular(22.5),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Helper(color: color1),
                            Helper(color: color2),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class MyRow extends StatelessWidget {
  final Map<String, String> colors;

  const MyRow({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          for (final entry in colors.entries) MyCard(myColors: entry),
        ],
      ),
    );
  }
}
class Helper extends StatelessWidget {
  final String color;

  const Helper({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(int.parse(color, radix: 16))),
        ),
        Text(
          "  #${color.substring(2)}",
          style: TextStyle(
            color: Color(
              int.parse(color, radix: 16),
            ),
          ),
        ),
      ],
    );
  }
}
