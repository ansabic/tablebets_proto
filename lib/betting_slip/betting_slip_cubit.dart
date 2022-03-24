import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tablebets_proto/dtos/match_box_data.dart';

part 'betting_slip_state.dart';

class BettingSlipCubit extends Cubit<BettingSlipState> {
  BettingSlipCubit(List<MatchBoxData> data) : super(RefreshBettingSlipState(data));

  void addLeftTeamValue(int index) {
    state.bettingSlipData[index] = addLeftValue(state.bettingSlipData[index]);
    List<MatchBoxData> newList = state.bettingSlipData;
    emit(RefreshBettingSlipState(newList));
  }

  void subtractLeftTeamValue(int index) {
    state.bettingSlipData[index] = subtractLeftValue(state.bettingSlipData[index]);
    List<MatchBoxData> newList = state.bettingSlipData;
    emit(RefreshBettingSlipState(newList));
  }

  void addRightTeamValue(int index) {
    state.bettingSlipData[index] = addRightValue(state.bettingSlipData[index]);
    List<MatchBoxData> newList = state.bettingSlipData;
    emit(RefreshBettingSlipState(newList));
  }

  void subtractRightTeamValue(int index) {
    state.bettingSlipData[index] = subtractRightValue(state.bettingSlipData[index]);
    List<MatchBoxData> newList = state.bettingSlipData;
    emit(RefreshBettingSlipState(newList));
  }

  MatchBoxData addLeftValue(MatchBoxData old) {
    return MatchBoxData(
        homeTeam: old.homeTeam,
        awayTeam: old.awayTeam,
        leftScore: old.leftScore + 1,
        rightScore: old.rightScore,
        status: old.status);
  }

  MatchBoxData subtractLeftValue(MatchBoxData old) {
    return MatchBoxData(
        homeTeam: old.homeTeam,
        awayTeam: old.awayTeam,
        leftScore: old.leftScore - 1,
        rightScore: old.rightScore,
        status: old.status);
  }

  MatchBoxData addRightValue(MatchBoxData old) {
    return MatchBoxData(
        homeTeam: old.homeTeam,
        awayTeam: old.awayTeam,
        leftScore: old.leftScore,
        rightScore: old.rightScore + 1,
        status: old.status);
  }

  MatchBoxData subtractRightValue(MatchBoxData old) {
    return MatchBoxData(
        homeTeam: old.homeTeam,
        awayTeam: old.awayTeam,
        leftScore: old.leftScore,
        rightScore: old.rightScore - 1,
        status: old.status);
  }
}
