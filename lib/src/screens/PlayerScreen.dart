import 'package:flutter/material.dart';
import 'package:nhl_compare/src/services/playerService.dart';

class PlayerScreen extends StatelessWidget {
  final player = loadPlayer();

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(player.nationality, style: TextStyle(fontSize: 24)));
  }
}
