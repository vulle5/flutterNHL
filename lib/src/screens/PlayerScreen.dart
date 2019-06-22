import 'package:flutter/material.dart';

import 'package:nhl_compare/src/models/Player.dart';

class PlayerScreen extends StatelessWidget {
  final Future<Player> player;

  PlayerScreen({Key key, this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("PlayerScreen");
  }
}
