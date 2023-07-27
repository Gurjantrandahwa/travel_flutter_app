import 'package:bloc/bloc.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';

class AppCubits extends Cubit<CubicStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }

  void getData() {
    try {
      emit(LoadedState());

    } catch (e) {
      print(e);
    }
  }
}
