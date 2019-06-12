import 'package:flutter/material.dart';

import 'package:nhl_compare/src/models/Player.dart';

class PlayerScreen extends StatelessWidget {
  final Future<Player> player;

  PlayerScreen({Key key, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder<Player>(
      future: player,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(
            snapshot.data.fullName,
            style: TextStyle(fontSize: 24),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        // Default
        return CircularProgressIndicator();
      },
    ));
  }
}
