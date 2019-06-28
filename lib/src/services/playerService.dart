import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;

import 'package:nhl_compare/src/models/Player.dart';

Map<String, dynamic> _parsePlayer(parsedJson) {
  final modParsedJson = parsedJson['people'][0];
  modParsedJson['careerRegularSeason'] =
      modParsedJson['stats'][1]['splits'][0]['stat'];
  modParsedJson['yearByYear'] = modParsedJson['stats'][0];
  modParsedJson.remove('stats');
  return modParsedJson;
}

Future<Player> fetchPlayer() async {
  final response =
      await http.get("""https://statsapi.web.nhl.com/api/v1/people/8474141
      ?expand=person.stats&stats=yearByYear,careerRegularSeason&expand=stats.team""");
  if (response.statusCode == 200) {
    final parsedJson = json.decode(response.body);
    Player player = Player.fromJson(_parsePlayer(parsedJson));
    return player;
  } else {
    throw Exception("Failed to load the players");
  }
}
