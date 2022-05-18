import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // color: Colors.blue,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        // atau gunakan ini:
        // style: ElevatedButton.styleFrom(primary: Colors.blue, onPrimary: Colors.white),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
