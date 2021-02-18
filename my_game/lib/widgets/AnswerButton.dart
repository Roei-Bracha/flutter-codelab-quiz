import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String text;
  final Function onPress;

  AnswerButton({this.text, this.onPress, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).accentColor,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
      onPressed: this.onPress,
    );
  }
}
