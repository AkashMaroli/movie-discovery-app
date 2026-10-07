import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navbar_state.dart';

class BottomNavbarCubit extends Cubit<int> {
  BottomNavbarCubit() : super(0);
  void changeNavTab(int index) {
    emit(index);
  }
}
