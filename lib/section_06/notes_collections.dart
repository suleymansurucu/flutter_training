main(){
  var myList =<String> [];
  var myMap = <String,dynamic> {};
  var mySet = <String> ["mehmet","suleyman","ali"];

  var oddNumbers = <int>[1,3,5];
  var evenNumbers = <int> [2,4,6];

  var finalNumbers = <int>[...oddNumbers,...evenNumbers];

  /*
  finalNumbers.addAll(oddNumbers);
  finalNumbers.addAll(evenNumbers);
   */
  //spreads operator
  print(finalNumbers);






}