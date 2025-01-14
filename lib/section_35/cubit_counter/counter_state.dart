part of 'counter_cubit.dart';

@immutable
sealed class CounterStateCubic {
  final int counter;
  const CounterStateCubic({required this.counter});
}

final class CounterInitial extends CounterStateCubic {
  const CounterInitial({required int startingValue}):super(counter: startingValue);
}

class MyCounterState extends CounterStateCubic{
  MyCounterState({required int counterValue}):super(counter: counterValue);

}
