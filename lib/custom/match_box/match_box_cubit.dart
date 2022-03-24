import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'match_box_state.dart';

class MatchBoxCubit extends Cubit<MatchBoxState> {
  MatchBoxCubit() : super(const RefreshMatchBoxState(leftTeamValue: 0, rightTeamValue: 0));

  void addLeftTeamValue() =>
      emit(RefreshMatchBoxState(leftTeamValue: state.leftTeamValue + 1, rightTeamValue: state.rightTeamValue));
  void subtractLeftTeamValue() =>
      emit(RefreshMatchBoxState(leftTeamValue: state.leftTeamValue - 1, rightTeamValue: state.rightTeamValue));
  void addRightTeamValue() =>
      emit(RefreshMatchBoxState(leftTeamValue: state.leftTeamValue, rightTeamValue: state.rightTeamValue + 1));
  void subtractRightTeamValue() =>
      emit(RefreshMatchBoxState(leftTeamValue: state.leftTeamValue, rightTeamValue: state.rightTeamValue - 1));
}
