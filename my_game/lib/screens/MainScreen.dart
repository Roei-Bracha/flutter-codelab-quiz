import 'package:flutter/material.dart';
import 'package:my_game/widgets/Loading.dart';
import 'package:my_game/widgets/question.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  List questions = [];
  int points = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My app"),
      ),
      body: Container(
        child: questions.length== 0 ? Loading(): Container(),
      ),
    );
  }
}
