import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  void decrement() {
    if (state <= 0) return;
    emit(state - 1);
  }

  void updateCounter(int value) {
    if (value < 0) return; // Prevent negative values
    emit(value);
  }

  void reset() => emit(0);
}
