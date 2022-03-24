part of 'match_box_cubit.dart';

@immutable
abstract class MatchBoxState {
  final int leftTeamValue;
  final int rightTeamValue;

  const MatchBoxState({required this.leftTeamValue, required this.rightTeamValue});
}

class RefreshMatchBoxState extends MatchBoxState {
  const RefreshMatchBoxState({required int leftTeamValue, required int rightTeamValue})
      : super(leftTeamValue: leftTeamValue, rightTeamValue: rightTeamValue);
}
