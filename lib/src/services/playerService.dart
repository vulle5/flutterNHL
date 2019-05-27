import 'dart:convert';
import 'dart:core';

import 'package:nhl_compare/src/data/playerData.dart';
import 'package:nhl_compare/src/models/Player.dart';

Map<String, dynamic> _parsePlayer(parsedJson) {
  final modParsedJson = parsedJson['people'][0];
  modParsedJson['stats'] = modParsedJson['stats'][0]['splits'][0]['stat'];
  return modParsedJson;
}

Player loadPlayer() {
  // Make Network call here
  final parsedJson = json.decode(jsonData);
  Player player = Player.fromJson(_parsePlayer(parsedJson));
  return player;
}
