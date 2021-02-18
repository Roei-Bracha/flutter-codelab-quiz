import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: 100,
            width: 100,
            child: CircularProgressIndicator(
              strokeWidth: 10,
            )));
  }
}
