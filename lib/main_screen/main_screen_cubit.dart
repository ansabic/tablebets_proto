import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_screen_state.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  MainScreenCubit() : super(const RefreshNavigationPosition(0));

  void changePosition(int position) {
    emit(RefreshNavigationPosition(position));
  }
}
