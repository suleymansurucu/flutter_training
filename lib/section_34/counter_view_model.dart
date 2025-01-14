import 'dart:async';

class CounterViewModel{
  int _counter = 0;
  final StreamController<int> _controller=StreamController();
  Stream<int> get counterStream => _controller.stream;
  Sink get _sink => _controller.sink;
  CounterViewModel(){
    _sink.add(_counter);
  }

  void decrement(){
    _sink.add(--_counter);
  }
  void increment(){
    _sink.add(_counter++);
  }
}