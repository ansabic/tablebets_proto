import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tablebets_proto/leagues/DataSource.dart';

part 'leagues_state.dart';

class LeaguesCubit extends Cubit<LeaguesState> {
  LeaguesCubit() : super(LeaguesInitial());

  Future<List<Matches>?> getMatches() async {
    var list = DataSource.fromJson(json.decode(DataSource.json)).matches;
    list?.forEach((element) {
      print(element.toString());
    });
    return list;
  }
}
