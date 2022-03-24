import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pick_list_state.dart';

class PickListCubit extends Cubit<PickListState> {
  PickListCubit() : super(PickListInitial());
}
