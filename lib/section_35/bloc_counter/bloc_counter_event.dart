part of 'bloc_counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class incrementCounterEvent extends CounterEvent{}
class decrementCounterEvent extends CounterEvent{}
