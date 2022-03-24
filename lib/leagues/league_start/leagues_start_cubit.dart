import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tablebets_proto/leagues/DataSource.dart';

part 'leagues_state.dart';

class LeaguesStartCubit extends Cubit<LeaguesStartState> {
  LeaguesStartCubit() : super(LeaguesStartInitial());

  Future<List<Matches>?> getMatches() async {
    return DataSource.fromJson(json.decode(DataSource.json)).matches;
  }
}
