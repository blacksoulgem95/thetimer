import 'package:flutter/material.dart';
import 'package:thetimer/views/HomeView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Timer',
      theme: ThemeData.dark(),
      home: HomeView()
    );
  }
}
