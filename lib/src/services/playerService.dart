import 'dart:convert';
import 'dart:core';

import 'package:nhl_compare/src/data/playerData.dart';
import 'package:nhl_compare/src/models/Player.dart';

Map<String, dynamic> _parsePlayer(parsedJson) {
  final modParsedJson = parsedJson['people'][0];
  modParsedJson['careerRegularSeason'] = modParsedJson['stats'][1]['splits'][0]['stat'];
  modParsedJson['yearByYear'] = modParsedJson['stats'][0];
  modParsedJson.remove('stats');
  return modParsedJson;
}

Player loadPlayer() {
  // Make Network call here
  final parsedJson = json.decode(jsonData);
  Player player = Player.fromJson(_parsePlayer(parsedJson));
  return player;
}
