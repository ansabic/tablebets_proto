part of 'betting_slip_cubit.dart';

@immutable
abstract class BettingSlipState {
  final List<MatchBoxData> bettingSlipData;

  const BettingSlipState(this.bettingSlipData);
}

class RefreshBettingSlipState extends BettingSlipState {
  const RefreshBettingSlipState(List<MatchBoxData> data) : super(data);
}
