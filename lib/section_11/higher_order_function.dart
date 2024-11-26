main() {
  List<int> numbers = [1, 2, 3];

  numbers.forEach((element) {
    print("Element $element");
  });

  myForEachMethod(numbers,(int value,index){
    print("Deger $value, index $index");
  });
}

void myForEachMethod(List<int> list, Function callback){
  for (int i=0; i<list.length;i++){
    callback(list[i],i);
  }
}