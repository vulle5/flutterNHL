import 'package:flutter/material.dart';

import 'package:nhl_compare/src/screens/PlayerScreen.dart';
import 'package:nhl_compare/src/services/playerService.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('NHL Compare'),
        ),
        body: PlayerScreen(player: fetchPlayer()),
      ),
    );
  }
}
