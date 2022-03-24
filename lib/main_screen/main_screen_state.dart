part of 'main_screen_cubit.dart';

@immutable
abstract class MainScreenState {
  final int navigationPosition;

  const MainScreenState(this.navigationPosition);
}

class RefreshNavigationPosition extends MainScreenState {
  const RefreshNavigationPosition(int position) : super(position);
  
}
