import 'package:flutter/material.dart';
import 'dart:math';

import 'text_control.dart';
import 'text_output.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final texts = const [
    'Monkey D Luffy',
    'Roronoa Zoro',
    'Nami',
    'Ussop',
    'Vinsmoke Sanji',
    'Tony Tony Chopper',
    'Nico Robin',
    'Franky',
    'Brook',
    'Jinbe',
  ];

  var _textIndex = 0;

  final _random = Random();
  int _nextRandom(int min, int max) => min + _random.nextInt(max - min);

  void _nextText() {
    var nextIndex = _textIndex;

    while (nextIndex == _textIndex) {
      nextIndex = _nextRandom(0, texts.length - 1);
    }

    setState(() {
      _textIndex = nextIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Muguiwara Crew'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextOutput(textOutput: texts[_textIndex]),
              TextControl(
                  actionText: 'Next Mugiwara', actionHandler: _nextText),
            ],
          ),
        ),
      ),
    );
  }
}
