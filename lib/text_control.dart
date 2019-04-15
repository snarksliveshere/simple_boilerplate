import 'package:flutter/material.dart';
import 'dart:math';
import './text_output.dart';

class TextControl extends StatefulWidget {
  final List<String> heightChanged;

  TextControl({this.heightChanged});

  @override
  State createState() {
    return _TextControl();
  }
}

class _TextControl extends State<TextControl> {
  List<String> _heightChanged = [];
  List<String> _listHeightChanged;

  @override
  void initState() {
    super.initState();
    this._listHeightChanged = widget.heightChanged;
    _heightChanged.add(widget.heightChanged[0]);
  }

  void _setHeightChange() {
    setState(() {
      _heightChanged.add(_listHeightChanged[this._getRandomInt(_listHeightChanged.length)]);
    });
  }

  int _getRandomInt(int length) {
    final _random = Random();
    return _random.nextInt(length);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Center(
              child: RaisedButton(
                color: Colors.greenAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.bubble_chart,
                      color: Colors.red,
                    ),
                    Text(
                      'Drink me... Again!',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ],
                ),
                onPressed: _setHeightChange,
              ),
        )),
        TextOutput(_heightChanged)
      ],
    );
  }
}
