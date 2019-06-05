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
  final CareerRegularSeason careerRegularSeason;
  final YearByYear yearByYear;

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
    this.primaryPosition,
    this.careerRegularSeason,
    this.yearByYear
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
      primaryPosition: PrimaryPosition.fromJson(parsedJson['primaryPosition']),
      careerRegularSeason: CareerRegularSeason.fromJson(parsedJson['careerRegularSeason']),
      yearByYear: YearByYear.fromJson(parsedJson['yearByYear'])
    );
  }
}

class CurrentTeam {
  final int id;
  final String name;
  final String link;

  const CurrentTeam({
    this.id,
    this.name,
    this.link
  });

  factory CurrentTeam.fromJson(Map<String, dynamic> parsedJson){
    if (parsedJson == null) return null;

    return CurrentTeam(
      id: parsedJson['id'] ?? null,
      name: parsedJson['name'],
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

class CareerRegularSeason {
  final String timeOnIce;
  final int assists;
  final int goals;
  final int pim;
  final int shots;
  final int games;
  final int hits;
  final int powerPlayGoals;
  final int powerPlayPoints;
  final String powerPlayTimeOnIce;
  final String evenTimeOnIce;
  final String penaltyMinutes;
  final double faceOffPct;
  final double shotPct;
  final int gameWinningGoals;
  final int overTimeGoals;
  final int shortHandedGoals;
  final int shortHandedPoints;
  final String shortHandedTimeOnIce;
  final int blocked;
  final int plusMinus;
  final int points;
  final int shifts;
  final String timeOnIcePerGame;
  final String evenTimeOnIcePerGame;
  final String shortHandedTimeOnIcePerGame;
  final String powerPlayTimeOnIcePerGame;

  const CareerRegularSeason({
    this.timeOnIce,
    this.assists,
    this.goals,
    this.pim,
    this.shots,
    this.games,
    this.hits,
    this.powerPlayGoals,
    this.powerPlayPoints,
    this.powerPlayTimeOnIce,
    this.evenTimeOnIce,
    this.penaltyMinutes,
    this.faceOffPct,
    this.shotPct,
    this.gameWinningGoals,
    this.overTimeGoals,
    this.shortHandedGoals,
    this.shortHandedPoints,
    this.shortHandedTimeOnIce,
    this.blocked,
    this.plusMinus,
    this.points,
    this.shifts,
    this.timeOnIcePerGame,
    this.evenTimeOnIcePerGame,
    this.shortHandedTimeOnIcePerGame,
    this.powerPlayTimeOnIcePerGame
  });

  factory CareerRegularSeason.fromJson(Map<String, dynamic> parsedJson){
    if (parsedJson == null) return null;

    return CareerRegularSeason(
        timeOnIce: parsedJson['timeOnIce'],
        assists: parsedJson['assists'],
        goals: parsedJson['goals'],
        pim: parsedJson['pim'],
        shots: parsedJson['shots'],
        games: parsedJson['games'],
        hits: parsedJson['hits'],
        powerPlayGoals: parsedJson['powerPlayGoals'],
        powerPlayPoints: parsedJson['powerPlayPoints'],
        powerPlayTimeOnIce: parsedJson['powerPlayTimeOnIce'],
        evenTimeOnIce: parsedJson['evenTimeOnIce'],
        penaltyMinutes: parsedJson['penaltyMinutes'],
        faceOffPct: parsedJson['faceOffPct'],
        shotPct: parsedJson['shotPct'],
        gameWinningGoals: parsedJson['gameWinningGoals'],
        overTimeGoals: parsedJson['overTimeGoals'],
        shortHandedGoals: parsedJson['shortHandedGoals'],
        shortHandedPoints: parsedJson['shortHandedPoints'],
        shortHandedTimeOnIce: parsedJson['shortHandedTimeOnIce'],
        blocked: parsedJson['blocked'],
        plusMinus: parsedJson['plusMinus'],
        points: parsedJson['points'],
        shifts: parsedJson['shifts'],
        timeOnIcePerGame: parsedJson['timeOnIcePerGame'],
        evenTimeOnIcePerGame: parsedJson['evenTimeOnIcePerGame'],
        shortHandedTimeOnIcePerGame: parsedJson['shortHandedTimeOnIcePerGame'],
        powerPlayTimeOnIcePerGame: parsedJson['powerPlayTimeOnIcePerGame']
    );
  }
}

class YearByYear {
  final List<Season> seasons;

  const YearByYear({this.seasons});

  factory YearByYear.fromJson(Map<String, dynamic> parsedJson){
    if (parsedJson == null) return null;

    var list = parsedJson['splits'] as List;
    List<Season> seasonList = list.map((item) => Season.fromJson(item)).toList();

    return YearByYear(
        seasons: seasonList
    );
  }
}

class Season {
  final String season;
  final SeasonStats seasonStats;
  final CurrentTeam team;
  final League league;

  const Season({this.season, this.seasonStats, this.team, this.league});

  factory Season.fromJson(Map<String, dynamic> parsedJson){
    if (parsedJson == null) return null;

    return Season(
      season: parsedJson['season'],
      seasonStats: SeasonStats.fromJson(parsedJson['stat']),
      team: CurrentTeam.fromJson(parsedJson['team']),
      league: League.fromJson(parsedJson['league'])
    );
  }
}

class SeasonStats {
  final String timeOnIce;
  final int assists;
  final int goals;
  final int pim;
  final int shots;
  final int games;
  final int hits;
  final int powerPlayGoals;
  final int powerPlayPoints;
  final String powerPlayTimeOnIce;
  final String evenTimeOnIce;
  final String penaltyMinutes;
  final double faceOffPct;
  final double shotPct;
  final int gameWinningGoals;
  final int overTimeGoals;
  final int shortHandedGoals;
  final int shortHandedPoints;
  final String shortHandedTimeOnIce;
  final int blocked;
  final int plusMinus;
  final int points;
  final int shifts;

  const SeasonStats({
    this.timeOnIce,
    this.assists,
    this.goals,
    this.pim,
    this.shots,
    this.games,
    this.hits,
    this.powerPlayGoals,
    this.powerPlayPoints,
    this.powerPlayTimeOnIce,
    this.evenTimeOnIce,
    this.penaltyMinutes,
    this.faceOffPct,
    this.shotPct,
    this.gameWinningGoals,
    this.overTimeGoals,
    this.shortHandedGoals,
    this.shortHandedPoints,
    this.shortHandedTimeOnIce,
    this.blocked,
    this.plusMinus,
    this.points,
    this.shifts
  });

  factory SeasonStats.fromJson(Map<String, dynamic> parsedJson){
    if (parsedJson == null) return null;

    return SeasonStats(
        timeOnIce: parsedJson['timeOnIce'] ?? "",
        assists: parsedJson['assists'] ?? 0,
        goals: parsedJson['goals'] ?? 0,
        pim: parsedJson['pim'] ?? 0,
        shots: parsedJson['shots'] ?? 0,
        games: parsedJson['games'] ?? 0,
        hits: parsedJson['hits'] ?? 0,
        powerPlayGoals: parsedJson['powerPlayGoals'] ?? 0,
        powerPlayPoints: parsedJson['powerPlayPoints'] ?? 0,
        powerPlayTimeOnIce: parsedJson['powerPlayTimeOnIce'] ?? "",
        evenTimeOnIce: parsedJson['evenTimeOnIce'] ?? "",
        penaltyMinutes: parsedJson['penaltyMinutes'] ?? "",
        faceOffPct: parsedJson['faceOffPct'] ?? 0.0,
        shotPct: parsedJson['shotPct'] ?? 0.0,
        gameWinningGoals: parsedJson['gameWinningGoals'] ?? 0,
        overTimeGoals: parsedJson['overTimeGoals'] ?? 0,
        shortHandedGoals: parsedJson['shortHandedGoals'] ?? 0,
        shortHandedPoints: parsedJson['shortHandedPoints'] ?? 0,
        shortHandedTimeOnIce: parsedJson['shortHandedTimeOnIce'] ?? "",
        blocked: parsedJson['blocked'] ?? 0,
        plusMinus: parsedJson['plusMinus'] ?? 0,
        points: parsedJson['points'] ?? 0,
        shifts: parsedJson['shifts'] ?? 0
    );
  }
}

class League {
  final String name;
  final String link;

  const League({
    this.name,
    this.link
  });

  factory League.fromJson(Map<String, dynamic> parsedJson){
    if (parsedJson == null) return null;

    return League(
        name: parsedJson['name'],
        link: parsedJson['link']
    );
  }
}
