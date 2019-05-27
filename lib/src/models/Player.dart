class Player {
  final int id;
  final String fullName;
  final String link;
  final String firstName;
  final String lastName;
  final String primaryNumber;
  final String birthDate;
  final int currentAge;
  final String birthCity;
  final String birthStateProvince;
  final String birthCountry;
  final String nationality;
  final String height;
  final int weight;
  final bool active;
  final bool alternateCaptain;
  final bool captain;
  final bool rookie;
  final String shootsCatches;
  final String rosterStatus;
  final CurrentTeam currentTeam;
  final PrimaryPosition primaryPosition;

  // Make stats its own class
  // final Stats stats
//  final List<Map<String, dynamic>> stats;

  const Player({
    this.id,
    this.fullName,
    this.link,
    this.firstName,
    this.lastName,
    this.primaryNumber,
    this.birthDate,
    this.currentAge,
    this.birthCity,
    this.birthStateProvince,
    this.birthCountry,
    this.nationality,
    this.height,
    this.weight,
    this.active,
    this.alternateCaptain,
    this.captain,
    this.rookie,
    this.shootsCatches,
    this.rosterStatus,
    this.currentTeam,
    this.primaryPosition
//    this.stats,
  });

  factory Player.fromJson(Map<String, dynamic> parsedJson) {
    if (parsedJson == null) return null;

    return Player(
      id: parsedJson['id'],
      fullName: parsedJson['fullName'],
      link: parsedJson['link'],
      firstName: parsedJson['firstName'],
      lastName: parsedJson['lastName'],
      primaryNumber: parsedJson['primaryNumber'],
      birthDate: parsedJson['birthDate'],
      currentAge: parsedJson['currentAge'] ?? 0,
      birthCity: parsedJson['birthCity'],
      birthStateProvince: parsedJson['birthStateProvince'] ?? "N/A",
      birthCountry: parsedJson['birthCountry'],
      nationality: parsedJson['nationality'],
      height: parsedJson['height'],
      weight: parsedJson['weight'],
      active: parsedJson['active'],
      alternateCaptain: parsedJson['alternateCaptain'],
      captain: parsedJson['captain'],
      rookie: parsedJson['rookie'],
      shootsCatches: parsedJson['shootsCatches'],
      rosterStatus: parsedJson['rosterStatus'],
      currentTeam: CurrentTeam.fromJson(parsedJson['currentTeam']),
      primaryPosition: PrimaryPosition.fromJson(parsedJson['primaryPosition'])
    );
  }
}

class CurrentTeam {
  final int id;
  final String team;
  final String link;

  const CurrentTeam({
    this.id,
    this.team,
    this.link
  });

  factory CurrentTeam.fromJson(Map<String, dynamic> parsedJson){
    if (parsedJson == null) return null;

    return CurrentTeam(
      id: parsedJson['id'],
      team: parsedJson['team'],
      link: parsedJson['link']
    );
  }
}

class PrimaryPosition {
  final String code;
  final String name;
  final String type;
  final String abbreviation;

  const PrimaryPosition({
    this.code,
    this.name,
    this.type,
    this.abbreviation
  });

  factory PrimaryPosition.fromJson(Map<String, dynamic> parsedJson){
    if (parsedJson == null) return null;

    return PrimaryPosition(
      code: parsedJson['code'],
      name: parsedJson['name'],
      type: parsedJson['type'],
      abbreviation: parsedJson['abbreviation']
    );
  }
}
