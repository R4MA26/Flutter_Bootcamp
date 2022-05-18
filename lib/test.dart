import 'package:flutter/material.dart';

//App Entry Point
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Text Manipulation'),
      ),
      body: TextOutput(),
    ));
  }
}

//Text Component

class TextOutput extends StatefulWidget {
  const TextOutput({Key? key}) : super(key: key);

  @override
  State<TextOutput> createState() => _TextOutputState();
}

class _TextOutputState extends State<TextOutput> {
  String textValue = 'Hello world';

  void _changeText() {
    setState(() {
      textValue = 'Goodbye world';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(textValue),
          TextControl(_changeText),
        ],
      ),
    );
  }
}

//Text Control
class TextControl extends StatelessWidget {
  final VoidCallback changeText;
  TextControl(this.changeText);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Change Text'),
      onPressed: changeText,
    );
  }
}
