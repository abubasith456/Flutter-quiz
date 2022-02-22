import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function() resetScore;

  Result(this.totalScore, this.resetScore);

  String get resultPhase {
    String result;
    if (totalScore <= 8) {
      result = 'You\'r stranger! :(';
    } else if (totalScore <= 10) {
      result = 'pretty likeable!';
    } else if (totalScore <= 15) {
      result = 'You\'re awesome but its not enough!';
    } else {
      result = 'You\'re excellent and you much likeable :)';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              resultPhase,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            FlatButton(
                onPressed: resetScore,
                child: const Text(
                  'Reset Quiz!',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
