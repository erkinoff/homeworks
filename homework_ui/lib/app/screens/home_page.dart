import 'package:flutter/material.dart';
import 'package:homework_ui/app/screens/components/default_border.dart';
import 'package:homework_ui/app/screens/components/divider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          IntrinsicWidth(
            child: DefaultBorder(
              right: true,
              child: Column(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  CircleAvatar(
                    child: Text(
                      "FCS",
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.deepPurpleAccent,
                  ),
                  DividerInColumn(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                DefaultBorder(
                  bottom: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Themes Playground M3 - Material 3 purple"),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.info,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
