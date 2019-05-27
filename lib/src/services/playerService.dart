import 'dart:convert';

import 'package:nhl_compare/src/data/playerData.dart';
import 'package:nhl_compare/src/models/Player.dart';

Player loadPlayer() {
  // Make Network call here
  final parsedJson = json.decode(jsonData);
  print(parsedJson);
  Player player = Player.fromJson(parsedJson['people'][0]);
  return player;
}
