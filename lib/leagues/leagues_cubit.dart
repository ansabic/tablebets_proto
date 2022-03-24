import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'leagues_state.dart';

class LeaguesCubit extends Cubit<LeaguesState> {
  LeaguesCubit() : super(LeaguesInitial());
}
