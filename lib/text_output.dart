import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String textOutput;

  const TextOutput({super.key, required this.textOutput});

  @override
  Widget build(BuildContext context) {
    return Text(
      textOutput,
      style: const TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
