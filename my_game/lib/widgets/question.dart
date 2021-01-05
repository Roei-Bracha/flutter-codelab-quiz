import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final question_text = "What does CPU stand for?";
  final correct_answer = "Central Processing Unit";
  final incorrect_answers = [
    "Central Process Unit",
    "Computer Personal Unit",
    "Central Processor Unit"
  ];

  Question({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(this.question_text),
          Container(
            color: Colors.green,
            height: 300,
            width: 300,
          )
        ],
      ),
    );
  }
}
