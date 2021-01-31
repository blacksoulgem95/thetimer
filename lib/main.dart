import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Timer',
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Timer'),
        ),
        body: Center(
          child: Text('No timers set'),
        ),
      ),
    );
  }
}
