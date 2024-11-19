main(){
  Set<String> names=Set();
  names.add("Suleyman");
  names.add("Fatma Sara");
  names.add("Eda Mihriban");
  names.add("Fatma Sara");
  names.add("Suleyman");
  names.add("Ali");
  names.add("Ali");
  print(names);

  bool result = names.remove("Suleyman");

  print("Our result is:" +result.toString());
  print("***********");

  print(names);

  for(String n1 in names){
    print("isim:" + n1);
  }

  Set<int> number = Set.from([1,2,3,4,5,1,2,3,4,5,6,7,89,8,7654,123,31,3]);
  List <int> even_numbers = [2,4,6,8,10,2,4,6,8];
  number.clear();
  number.addAll(even_numbers);

  for(int i in number){
    print("Numbers: " +i.toString());
  }




}