import 'package:flutter/material.dart';

class Anwser extends StatelessWidget {
  final Function _selectHandler;
  final String _anwserText;
  Anwser(this._selectHandler, this._anwserText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          onPressed: _selectHandler,
          child: Text(_anwserText),
        ));
  }
}
