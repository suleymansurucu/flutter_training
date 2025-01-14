Stream<int> getNumbers() async* {
  for (int i = 1; i < 5; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));

    /* if (i == 2) {
      throw Exception('i == 2 ');
    }*/
  }
}

void main() {
  /*getNumbers().listen((onData) {
    print(onData.toString());
  });*/
  // subscriptionProgress();
  // broadCastStream();
  stateMethotsTraining();
}

void broadCastStream() {
  final myStream = getNumbers().asBroadcastStream();
  myStream.listen((value) {
    print('1st Listener : $value');
  });
  myStream.listen((value) {
    print('2nd Listener : $value');
  });
}

void subscriptionProgress() {
  var subscription = getNumbers().listen((onData) {});
  subscription.onData((handleData) {
    print(handleData.toString());
  });
  subscription.onError((handleError) {
    print(handleError.toString());
  });
  subscription.onDone(() {
    print('stream done');
  });
}

void stateMethotsTraining() {
  final myStream = getNumbers();
  // => EXPAND method is change the coming stream value.
  /*myStream.expand((element) {
    return [element, element * 2, 99];
  }).listen((value) {print(value);});*/

  // => MAP method is convert method. Using for change the value.
  //
  //myStream.map((element)=>element*5).listen((onData) => print(onData));

  // => WHERE Mehot is filtering
 /* myStream.where((test) {
    return test % 2 == 0;
  }).listen((onData) => print(onData));*/

  myStream.take(2).listen((onData) {
    print(onData);
  });
}
