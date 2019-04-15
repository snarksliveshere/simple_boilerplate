import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final List<String> heightChanged;
  TextOutput(this.heightChanged);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          this.heightChanged[this.heightChanged.length - 1],
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


