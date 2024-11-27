class MyStack {
  List _list = [];

  push(newElement) {
    _list.add(newElement);
  }

  pop() {
    return _list.removeLast();
  }
}

class IntMyStack {
  List<int> _list = [];

  void push(int newElement) {
    _list.add(newElement);
  }

  int pop() {
    return _list.removeLast();
  }
}

class GenericStack<T> {
  List<T> _myList = <T>[];

  void push(T newElement) {
    _myList.add(newElement);
  }

  pop() {
    return _myList.removeLast();
  }
}
