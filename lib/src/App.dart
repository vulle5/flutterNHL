import 'package:flutter/material.dart';
import './screens//PlayerScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('NHL Compare'),
        ),
        body: PlayerScreen(),
      ),
    );
  }
}
