import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterStateCubic> {
  CounterCubit() : super(const CounterInitial(startingValue: 20));

  void increment() {
    emit(MyCounterState(counterValue: state.counter + 1));
  }

  void decrement() {
    emit(MyCounterState(counterValue: state.counter - 1));
  }
}
