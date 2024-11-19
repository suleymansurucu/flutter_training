main()
{
  List<int> numbers = List.filled(3, 0, growable: false);
  numbers[0]=10;
  numbers[1]=20;
  numbers[2]=20;
  print(numbers[1]);
  print(numbers.length);

  List<String> names= List.filled(4, "");
  names[0]= "Suleyman";
  names[1]= "Eda";
  names[2]= 1.toString();

  List<dynamic> mixed=List<dynamic>.filled(10, "",);
  mixed[0]=10;
  mixed[1]="Fatma Sara";
  mixed[2]="Eda Mihriban";
  mixed[3]=true;

  print("*****");

  for(int i in numbers){
    print(i);
  }


}