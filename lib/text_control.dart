import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final String actionText;
  final VoidCallback actionHandler;

  const TextControl(
      {super.key, required this.actionText, required this.actionHandler});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: actionHandler,
      child: Text(actionText),
    );
  }
}
