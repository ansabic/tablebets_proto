import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tablebets_proto/dtos/match_box_data.dart';

part 'betting_slip_state.dart';

class BettingSlipCubit extends Cubit<BettingSlipState> {
  BettingSlipCubit() : super(RefreshBettingSlipState());
}
