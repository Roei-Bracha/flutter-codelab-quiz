import 'package:flutter/material.dart';
import 'package:my_game/widgets/AnswerButton.dart';

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
    List<Widget> answers = [];
    answers.add(AnswerButton(
      text: correct_answer,
      onPress: () {
        print(true);
      },
    ));
    incorrect_answers.forEach((ansString) {
      answers.add(AnswerButton(
        text: ansString,
        onPress: () {
          print(false);
        },
      ));
    });
    answers.shuffle();
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(this.question_text),
          Container(
            height: 100,
            width: 100,
            child: Image.asset('assets/images/milli.png'),
          ),
          Container(
            height: 350,
            child: GridView.count(
                crossAxisCount: 2,
                physics: NeverScrollableScrollPhysics(),
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[...answers]),
          )
        ],
      ),
    );
  }
}
