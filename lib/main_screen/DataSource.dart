class DataSource {
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
