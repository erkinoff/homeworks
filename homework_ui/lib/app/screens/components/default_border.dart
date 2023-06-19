import 'package:flutter/material.dart';

class DefaultBorder extends StatelessWidget {
  final bool left;
  final bool right;
  final bool top;
  final bool bottom;
  final Widget child;

  const DefaultBorder({super.key,
    required this.child,
    this.left = false,
    this.right = false,
    this.top = false,
    this.bottom = false});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          right: right ? defaultBorder(): BorderSide.none,
          bottom: bottom ? defaultBorder(): BorderSide.none,
          left: left ? defaultBorder(): BorderSide.none,
          top: top ? defaultBorder(): BorderSide.none,
        ),
      ),
      child: child,
    );
  }
}

BorderSide defaultBorder() {
  return BorderSide(
    color: Colors.grey.shade300,
    width: 1,
  );
}


