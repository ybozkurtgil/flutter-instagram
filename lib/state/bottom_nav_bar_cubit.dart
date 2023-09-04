import 'package:bloc/bloc.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarState(CurrentIndex:0));

  void onPressed(value) {
    emit(BottomNavBarState(CurrentIndex:value));
  }
}
