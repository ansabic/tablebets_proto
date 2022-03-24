import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'table_bet_overview_state.dart';

class TableBetOverviewCubit extends Cubit<TableBetOverviewState> {
  TableBetOverviewCubit() : super(TableBetOverviewInitial());
}
