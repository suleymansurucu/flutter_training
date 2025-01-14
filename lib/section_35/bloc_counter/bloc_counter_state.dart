
import 'package:flutter/material.dart';

@immutable
sealed class CounterState {
  final int counter;
  const CounterState({required this.counter});
}

final class CounterInitial extends CounterState {
  const CounterInitial({required int startingValue}):super(counter: startingValue);
}

class MyCounterState extends CounterState{
  const MyCounterState({required int counterValue}):super(counter: counterValue);

}
