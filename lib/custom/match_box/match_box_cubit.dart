import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'match_box_state.dart';

class MatchBoxCubit extends Cubit<MatchBoxState> {
  MatchBoxCubit() : super(const RefreshMatchBoxState(leftTeamValue: 0, rightTeamValue: 0));

}
