import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'table_bet_place_bet_state.dart';

class TableBetPlaceBetCubit extends Cubit<TableBetPlaceBetState> {
  TableBetPlaceBetCubit() : super(TableBetPlaceBetInitial());
}
