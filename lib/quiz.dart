import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}

// import 'package:flutter/material.dart';

// import './question.dart';
// import './answer.dart';

// class Quiz extends StatelessWidget {
//   final List<Map<String, Object>> questions;
//   final int questionIndex;
//   final VoidCallback answerQuestion;
//   Quiz(
//     @required this.questions,
//     @required this.answerQuestion,
//     @required this.questionIndex,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // Text(question.elementAt(0)),
//         // Text(question[1]),
//         // Text(questions[_questionIndex]),

//         Question(
//           questions[questionIndex]['questionText'] as String,
//         ),

//         ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
//             .map((answer) {
//           return Answer(() => answerQuestion(), answer['text'] as String);

//           //sudah di coba tapi tidak bisa
//           // Answer(() => answerQuestion(), answer['text'] as String);
//           // return Answer(answer['text'] as String, () => answerQuestion(answer['score'] as int));
//         }).toList()

//         // ...(questions[_questionIndex]['answers'] as List<String>)
//         //     .map((answer) {
//         //   return Answer(_answerQuestion, answer);
//         // }).toList()

//         // Answer(_answerQuestion, 'Answer 1'),
//         // Answer(_answerQuestion, 'Answer 2'),
//         // Answer(_answerQuestion, 'Answer 3'),

//         // RaisedButton(
//         //   onPressed: _answerQuestion,
//         //   child: Text('Answer 1'),
//         // ),
//         // RaisedButton(
//         //   onPressed: () => print('Answer 2 chosen!'),
//         //   child: Text('Answer 2'),
//         // ),
//         // RaisedButton(
//         //   onPressed: () {
//         //     print('Answer 3 chosen!');
//         //   },
//         //   child: Text('Answer 3'),
//         // ),
//       ],
//     );
//   }
// }
