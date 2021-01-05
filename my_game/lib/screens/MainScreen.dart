import 'package:flutter/material.dart';
import 'package:my_game/widgets/question.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My app"),
      ),
      body: Container(
        child: Question(),
      ),
    );
  }
}
