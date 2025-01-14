import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'bloc_counter_state.dart';

part 'bloc_counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(startingValue: 60)) {
    on<incrementCounterEvent>((event, emit) {
      emit(MyCounterState(counterValue: state.counter + 1));
    });
    on<decrementCounterEvent>((event, emit) {
      emit(MyCounterState(counterValue: state.counter - 1));
    });
  }
}
