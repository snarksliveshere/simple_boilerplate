import 'package:flutter/material.dart';
import './text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> _heightChange = [
    'Your height has not changed',
    'U are much taller',
    'U are much lower',
    'U got a little taller',
    'U got a little lower',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alice',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alice'),
        ),
        body: TextControl(heightChanged: _heightChange),
      )
    );
  }
}
