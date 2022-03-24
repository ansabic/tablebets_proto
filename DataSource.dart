class DataSource {

  static const json = "{\"matches\":[{\"homeTeam\":\"FC Bayern M\\u00fcnchen\",\"awayTeam\":\"VfL Wolfsburg\",\"matchDate\":\"24.03.2022\",\"matchTime\":\"15:00\",\"odds\":[{\"title\":\"1\",\"value\":\"1,5\"},{\"title\":\"x\",\"value\":\"3,2\"},{\"title\":\"2\",\"value\":\"2.0\"}]},{\"homeTeam\":\"Borussia Dortmund\",\"awayTeam\":\"RB Leipzig\",\"matchDate\":\"24.03.2022\",\"matchTime\":\"15:00\",\"odds\":[{\"title\":\"1\",\"value\":\"1,5\"},{\"title\":\"x\",\"value\":\"3,2\"},{\"title\":\"2\",\"value\":\"2.0\"}]},{\"homeTeam\":\"Eintracht Frankfurt\",\"awayTeam\":\"Bayer 04 Leverkusen\",\"matchDate\":\"24.03.2022\",\"matchTime\":\"15:30\",\"odds\":[{\"title\":\"1\",\"value\":\"1,5\"},{\"title\":\"x\",\"value\":\"3,2\"},{\"title\":\"2\",\"value\":\"2.0\"}]},{\"homeTeam\":\"1. FC Union Berlin\",\"awayTeam\":\"Borussia M'gladbach\",\"matchDate\":\"24.03.2022\",\"matchTime\":\"17:00\",\"odds\":[{\"title\":\"1\",\"value\":\"1,5\"},{\"title\":\"x\",\"value\":\"3,2\"},{\"title\":\"2\",\"value\":\"2.0\"}]},{\"homeTeam\":\"FC Bayern M\\u00fcnchen\",\"awayTeam\":\"VfL Wolfsburg\",\"matchDate\":\"25.03.2022\",\"matchTime\":\"17:00\",\"odds\":[{\"title\":\"1\",\"value\":\"1,5\"},{\"title\":\"x\",\"value\":\"3,2\"},{\"title\":\"2\",\"value\":\"2.0\"}]},{\"homeTeam\":\"VfB Stuttgart\",\"awayTeam\":\"SC Freiburg\",\"matchDate\":\"25.03.2022\",\"matchTime\":\"16:00\",\"odds\":[{\"title\":\"1\",\"value\":\"1,5\"},{\"title\":\"x\",\"value\":\"3,2\"},{\"title\":\"2\",\"value\":\"2.0\"}]},{\"homeTeam\":\"TSG Hoffenheim\",\"awayTeam\":\"1. FSV Mainz 05\",\"matchDate\":\"25.03.2022\",\"matchTime\":\"16:30\",\"odds\":[{\"title\":\"1\",\"value\":\"1,5\"},{\"title\":\"x\",\"value\":\"3,2\"},{\"title\":\"2\",\"value\":\"2.0\"}]},{\"homeTeam\":\"FC Augsburg\",\"awayTeam\":\"Hertha Berlin\",\"matchDate\":\"25.03.2022\",\"matchTime\":\"16:30\",\"odds\":[{\"title\":\"1\",\"value\":\"1,5\"},{\"title\":\"x\",\"value\":\"3,2\"},{\"title\":\"2\",\"value\":\"2.0\"}]}]}";

  List<Matches>? matches;

  DataSource({this.matches});

  DataSource.fromJson(Map<String, dynamic> json) {
    if (json['matches'] != null) {
      matches = <Matches>[];
      json['matches'].forEach((v) {
        matches!.add(Matches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (matches != null) {
      data['matches'] = matches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Matches {
  String? homeTeam;
  String? awayTeam;
  String? matchDate;
  String? matchTime;
  List<Odds>? odds;

  Matches(
      {this.homeTeam,
      this.awayTeam,
      this.matchDate,
      this.matchTime,
      this.odds});

  Matches.fromJson(Map<String, dynamic> json) {
    homeTeam = json['homeTeam'];
    awayTeam = json['awayTeam'];
    matchDate = json['matchDate'];
    matchTime = json['matchTime'];
    if (json['odds'] != null) {
      odds = <Odds>[];
      json['odds'].forEach((v) {
        odds!.add(Odds.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['homeTeam'] = homeTeam;
    data['awayTeam'] = awayTeam;
    data['matchDate'] = matchDate;
    data['matchTime'] = matchTime;
    if (odds != null) {
      data['odds'] = odds!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Odds {
  String? title;
  String? value;

  Odds({this.title, this.value});

  Odds.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['value'] = value;
    return data;
  }
}
