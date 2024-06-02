import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamApoints = 0;
  int teamBpoints = 0;

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamApoints += buttonNumber;
      emit(CounterAIncrementState());
    } else if (team == 'B') {
      teamBpoints += buttonNumber;
      emit(CounterBIncrementState());
    } else {
      teamBpoints = 0;
      teamApoints = 0;
      emit(CounterResetState());
    }
  }
}
